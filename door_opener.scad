cube(5);
   x = 4+y;
   rotate(40) square(5,10);
   translate([10,5]) { circle(5); square(4); }
   rotate(60) color("red") { circle(5); square(4); }
   color("blue") { translate([5,3,0]) sphere(5); rotate([45,0,45]) { cylinder(10); cube([5,6,7]); } }
   