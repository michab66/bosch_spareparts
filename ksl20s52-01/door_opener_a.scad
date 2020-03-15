 
height = 16;

block_width = 31.48;
thickness = 12;

screw_hole_diameter = 4.52;
screw_hole_distance_fromside = 3.14;
screw_hole_distance_from_bottom = height - screw_hole_diameter-4.25;

main_hole_diameter = 5.25; //actually 5.1 but have accoutn for tolorance of 3D print.
main_hole_distance_from_bottom = 4.5;

poep_distance_from_bottom = 2.8;
poep_diameter = 2.6;
poep_distance_from_side = 6.68-poep_diameter;


difference() {
    
    //main cube - main hole
    difference(){
        cube([thickness, block_width, height]);
        
        translate([main_hole_distance_from_bottom + main_hole_diameter/2, block_width/2]){
            cylinder(d=main_hole_diameter,h=height, $fn=100);
        }
        //screw holes
        translate([0, screw_hole_distance_fromside + screw_hole_diameter/2, screw_hole_distance_from_bottom + screw_hole_diameter/2])
            rotate(a = [0,90,0])
                cylinder(h=thickness, d=screw_hole_diameter, $fn=100);
        
        translate([0, block_width-screw_hole_distance_fromside- screw_hole_diameter/2, screw_hole_distance_from_bottom + screw_hole_diameter/2])
            rotate(a = [0,90,0])
                cylinder(h=thickness, d=screw_hole_diameter, $fn=100);
    
    }
}   

translate([0,0, 2.8+poep_diameter/2]){
    rotate([0,-90,0]){
        translate([0, poep_distance_from_side+poep_diameter/2, 0])cylinder(h=1.26, d=2.6, $fn=100);
        translate([0, block_width-poep_distance_from_side-poep_diameter/2, 0])cylinder(h=1.26, d=2.6, $fn=100);
    }
}
