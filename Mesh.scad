$fn = 100; // Increase the resolution for smoother shapes

use <Gear.scad>

radius = 20;
depth = 1.7;
teeth = 48;
spokes = 12;

gear(radius, depth, teeth, spokes);
translate([radius*2, 0, 0]) rotate([0, 0, 360/teeth/2]) gear(radius, depth, teeth, spokes); // Adjust the translate and rotate values as needed
//translate([0, radius*2, 0]) rotate([0, 0, 360/teeth/2]) gear(radius, depth, teeth, spokes); // Adjust the translate and rotate values as needed
//translate([-radius*2, 0, 0]) rotate([0, 0, 360/teeth/2]) gear(radius, depth, teeth, spokes); // Adjust the translate and rotate values as needed
