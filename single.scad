$fn = 20; // Increase the resolution for smoother shapes

use <Gear.scad>

// Gear parameters
radius = 10;
depth = 1.7;
teeth = 24;
spokes = 8;

// First gear
rotate([0, 0, 0]) gear(radius, depth, teeth, spokes);