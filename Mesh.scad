$fn = 20; // Increase the resolution for smoother shapes

use <Gear.scad>

// Gear parameters
radius = 10;
depth = 1.7;
teeth = 24;
spokes = 4;

radius2 = 5;
depth2 = 1.7;
teeth2 = 12;
spokes2 = 4;

radius3 = 20;
depth3 = 1.7;
teeth3 = 48;
spokes3 = 4;

radius4 = 15;
depth4 = 1.7;
teeth4 = 36;
spokes4 = 4;

radius5 = 2.5;
depth5 = 1.7;
teeth5 = 6;
spokes5 = 4;

// Animation parameter
angle = 360 * $t;

// First gear
rotate([0, 0, angle]) gear(radius, depth, teeth, spokes);

// Second gear
translate([0, radius + radius2, 0]) 
rotate([0, 0, -angle * teeth / teeth2 + 360/teeth2/2]) 
gear(radius2, depth2, teeth2, spokes2);

// Third gear
translate([-(radius + radius3), 0, 0]) 
rotate([0, 0, -angle * teeth / teeth3 + 360/teeth3/2]) 
gear(radius3, depth3, teeth3, spokes3);

// Fourth gear
translate([radius + radius4, 0, 0]) 
rotate([0, 0, -angle * teeth / teeth4 + 360/teeth4/2]) 
gear(radius4, depth4, teeth4, spokes4);

// Uncomment and adjust if you want to include the fifth gear
//translate([0, -(radius + radius5), 0]) 
//rotate([0, 0, angle * teeth / teeth5 + 360/teeth5/2]) 
//gear(radius5, depth5, teeth5, spokes5);
