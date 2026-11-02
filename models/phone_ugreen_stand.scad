// Landscape phone and hub stand. Dimensions in millimeters.
base_length = 200;
base_width = 50;
base_thickness = 4;
channel_width = 21;
wall_thickness = 3;
wall_height = 12;
entry_chamfer = 1;

outer_width = channel_width + 2 * wall_thickness;
margin = (base_width - outer_width) / 2;
left_inner = margin + wall_thickness;
right_inner = left_inner + channel_width;
wall_top = base_thickness + wall_height;

assert(base_length > 0 && base_thickness > 0);
assert(margin >= 0 && channel_width > 0);
assert(entry_chamfer > 0 && entry_chamfer < wall_thickness);
assert(entry_chamfer < wall_height);

// The cross-section lies in YZ; extrusion runs along X.
// Both channel ends remain open. No internal divider or foot recesses.
section = [
    [0, 0],
    [base_width, 0],
    [base_width, base_thickness],
    [right_inner + wall_thickness, base_thickness],
    [right_inner + wall_thickness, wall_top],
    [right_inner + entry_chamfer, wall_top],
    [right_inner, wall_top - entry_chamfer],
    [right_inner, base_thickness],
    [left_inner, base_thickness],
    [left_inner, wall_top - entry_chamfer],
    [left_inner - entry_chamfer, wall_top],
    [margin, wall_top],
    [margin, base_thickness],
    [0, base_thickness]
];

rotate([90, 0, 90])
    linear_extrude(height = base_length, convexity = 10)
        polygon(points = section);
