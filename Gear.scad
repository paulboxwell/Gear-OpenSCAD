module gear(radius = 16, depth = 2, teeth = 10, spokes = 16) {
    // Central Hub
    intersection()
    {
    difference() {
        cylinder(h = depth, r = radius * 0.3, center = true);
        cylinder(h = depth + 1, r = radius * 0.1, center = true);
    }
    sphere(r = radius * 0.3);
    }

    // Outer Ring
    difference() {
        union() {
            cylinder(h = depth, r = radius, center = true);
            // Teeth Addendum
            for (i = [0 : 360 / teeth : 360 - 360 / teeth]) {
                rotate([0, 0, i])
                translate([radius, 0, 0])
                Addendum(radius / teeth * 3.14, depth);
            }
        }
        // Teeth Dedendum
        for (i = [360 / (2 * teeth) : 360 / teeth : 360]) {
            rotate([0, 0, i])
            translate([radius, 0, 0])
            Dedendum(radius / teeth * 3.14, depth + 1);
        }
        // Hole
        cylinder(h = depth + 1, r = radius * 0.8, center = true);
    }

    // Spokes
    for (i = [0 : 360 / spokes : 360 - 360 / spokes]) {
        rotate([0, 0, i])
        translate([radius/2, 0, 0])
        spoke(radius, depth);
    }
}

// Dedendum Module
module Dedendum(size, depth) {
    tooth_depth = size / 2 * 1.1;
    tooth_depth_width = size / 3;
    linear_extrude(height = depth, center = true)
    polygon(points = [[0, -size/2], [0, size/2], [-tooth_depth, tooth_depth_width], [-tooth_depth, -tooth_depth_width]]);
}

// Addendum Module
module Addendum(size, depth) {
    tooth_height = size / 2 * 0.9;
    tooth_depth_width = size/3;
    linear_extrude(height = depth, center = true)
    polygon(points = [[-tooth_depth_width*4, -size], [-tooth_depth_width*4, size], [tooth_height, tooth_depth_width], [tooth_height, -tooth_depth_width]]);
}

// Spoke Module
module spoke(radius, depth) {
    intersection()
    {
    cube([radius *0.75, radius * 0.1, depth], center = true);
    rotate([0, 90, 0])
    cylinder(h = radius *0.75, r = radius * 0.05, center = true);
    }
}