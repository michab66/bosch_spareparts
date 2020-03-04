 
height = 16;

block_width = 30;
thickness = 10;

screw_hole_diameter = 4.5;
screw_hole_distance_fromside = 3;
screw_hole_distance_from_bottom = 8.3;

main_hole_diameter = 5.1;
main_hole_distance_from_bottom = 3.5; //guessed



difference() {
    
    //main cube - main hole
    difference(){
        cube([thickness, block_width, height]);
        
        translate([main_hole_distance_from_bottom + main_hole_diameter/2, block_width/2]){
            cylinder(d=main_hole_diameter,h=height, $fn=100);
        }
        //screw holes
        translate([0, screw_hole_distance_fromside, screw_hole_distance_from_bottom + screw_hole_diameter/2])
        rotate(a = [0,90,0])
        cylinder(h=thickness, d=screw_hole_diameter, $fn=100);
        
        translate([0, block_width-screw_hole_distance_fromside, screw_hole_distance_from_bottom + screw_hole_diameter/2])
        rotate(a = [0,90,0])
        cylinder(h=thickness, d=screw_hole_diameter, $fn=100);
    
    }
    
    //todo pöp's
}   
 