$fn = 100; // Increase the resolution for smoother shapes

use <Gear.scad>

radius = 10;
depth = 1.7;
teeth = 24;
spokes = 12;

gear(radius, depth, teeth, spokes);
translate([radius*2, 0, 0]) rotate([0, 0, 360/teeth/2]) gear(radius, depth, teeth, spokes); // Adjust the translate and rotate values as needed

radius2 = 5;
depth2 = 1.7;
teeth2 = 12;
spokes2 = 8;

translate([0, radius+radius2, 0]) rotate([0, 0, 360/teeth2/2]) gear(radius2, depth2, teeth2, spokes2); // Adjust the translate and rotate values as needed

radius3 = 20;
depth3 = 1.7;
teeth3 = 48;
spokes3 = 6;

translate([-(radius+radius3), 0, 0]) rotate([0, 0, 360/teeth3/2]) gear(radius3, depth3, teeth3, spokes3); // Adjust the translate and rotate values as needed
