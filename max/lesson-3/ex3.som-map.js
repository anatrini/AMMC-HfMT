// A self-organising map of ml.som, drawn in a v8ui: one cell per node,
// its weights as bars. Used by ex3c-harmony-map and ex3d-plugin-map.
//
// Messages
//   mapsize n          the map is n x n nodes
//   node x y w1 w2 ... weights of one node (from 'dump' of ml.som)
//   labels 1           pitch classes: bars scaled to the strongest one, black
//                      keys darker, name of the strongest one in each cell
//   xy x y             move the cursor to x y and output it (phone, hand)
//   mark w1 w2 ...     a preset: drawn, numbered, on the node nearest to it
//   clearmarks, clear
// Click or drag on the map: outputs x y, floats from 0 to n-1, for 'get x y'.

mgraphics.init();
mgraphics.relative_coords = 0;
mgraphics.autofill = 0;
inlets = 1;
outlets = 1;

const NAMES = ['C', 'C#', 'D', 'Eb', 'E', 'F', 'F#', 'G', 'Ab', 'A', 'Bb', 'B'];
const BLACK_KEYS = [1, 3, 6, 8, 10];
const OLIVE = [0.35, 0.45, 0.07, 1];

let n = 8;
let nodes = {}; // "x y" -> weights
let pitchLabels = 0;
let cursor = null;
let marks = [];

function mapsize(v) {
    n = Math.max(1, Math.round(v));
    nodes = {};
    cursor = null;
    mgraphics.redraw();
}

function node(x, y, ...w) {
    nodes[Math.round(x) + ' ' + Math.round(y)] = w;
    mgraphics.redraw();
}

function labels(v) {
    pitchLabels = v ? 1 : 0;
    mgraphics.redraw();
}

function mark(...w) {
    marks.push(w);
    mgraphics.redraw();
}

function clearmarks() {
    marks = [];
    mgraphics.redraw();
}

function clear() {
    nodes = {};
    marks = [];
    cursor = null;
    mgraphics.redraw();
}

function xy(x, y) {
    cursor = [clamp(x), clamp(y)];
    mgraphics.redraw();
    outlet(0, cursor[0], cursor[1]);
}

function onclick(px, py) {
    const c = cell();
    xy(px / c - 0.5, py / c - 0.5);
}

function ondrag(px, py) {
    onclick(px, py);
}

function clamp(v) {
    return Math.min(n - 1, Math.max(0, v));
}

function cell() {
    const [width, height] = mgraphics.size;
    return Math.min(width, height) / n;
}

// node nearest to a list of weights (squared distance)
function nearest(w) {
    let best = null;
    let bestDistance = Infinity;
    for (const key in nodes) {
        const v = nodes[key];
        let d = 0;
        for (let i = 0; i < Math.min(v.length, w.length); i++) d += (v[i] - w[i]) ** 2;
        if (d < bestDistance) {
            bestDistance = d;
            best = key.split(' ').map(Number);
        }
    }
    return best;
}

function paint() {
    const [width, height] = mgraphics.size;
    const c = cell();
    mgraphics.set_source_rgba(0, 0, 0, 1);
    mgraphics.rectangle(0, 0, width, height);
    mgraphics.fill();
    mgraphics.select_font_face('Arial');
    for (let x = 0; x < n; x++) {
        for (let y = 0; y < n; y++) {
            const x0 = x * c;
            const y0 = y * c;
            mgraphics.set_source_rgba(0.17, 0.17, 0.17, 1);
            mgraphics.rectangle(x0 + 1, y0 + 1, c - 2, c - 2);
            mgraphics.fill();
            const w = nodes[x + ' ' + y];
            if (!w || !w.length) continue;
            const top = pitchLabels ? Math.max(...w) : 1;
            const step = (c - 6) / w.length;
            for (let i = 0; i < w.length; i++) {
                const h = top > 0 ? Math.min(1, Math.max(0, w[i] / top)) * c * 0.62 : 0;
                const grey = pitchLabels && BLACK_KEYS.includes(i) ? 0.5 : 0.85;
                mgraphics.set_source_rgba(grey, grey, grey, 1);
                mgraphics.rectangle(x0 + 3 + i * step, y0 + c - 3 - h, Math.max(1, step * 0.75), h);
                mgraphics.fill();
            }
            if (pitchLabels && c > 18) {
                mgraphics.set_font_size(Math.min(12, c * 0.24));
                mgraphics.set_source_rgba(1, 1, 1, 1);
                mgraphics.move_to(x0 + 3, y0 + 3 + Math.min(12, c * 0.24));
                mgraphics.show_text(NAMES[w.indexOf(top)]);
            }
        }
    }
    mgraphics.set_font_size(Math.min(12, c * 0.3));
    marks.forEach((w, i) => {
        const p = nearest(w);
        if (!p) return;
        mgraphics.set_source_rgba(...OLIVE);
        mgraphics.arc((p[0] + 0.5) * c, (p[1] + 0.5) * c, c * 0.22, 0, 2 * Math.PI);
        mgraphics.fill();
        mgraphics.set_source_rgba(1, 1, 1, 1);
        mgraphics.move_to((p[0] + 0.5) * c - c * 0.12, (p[1] + 0.5) * c + c * 0.1);
        mgraphics.show_text(String(i + 1));
    });
    if (cursor) {
        mgraphics.set_source_rgba(1, 1, 1, 1);
        mgraphics.set_line_width(2);
        mgraphics.arc((cursor[0] + 0.5) * c, (cursor[1] + 0.5) * c, c * 0.3, 0, 2 * Math.PI);
        mgraphics.stroke();
    }
}
