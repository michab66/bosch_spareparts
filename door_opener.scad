outerHeight = 10;
outerWidth = 10;
outerLength = 30;

fuehrungDelta = 5;
fuehrungRadius = 2;
screwRadius = 2;

color( "green" ) cube([outerWidth, outerLength, outerHeight] );
translate([fuehrungRadius + fuehrungDelta,outerLength/2,0]) {
color( "red" ) cylinder(h=outerHeight, r=fuehrungRadius, $fn=100);
}

cylinder(h=outerHeight+1, r=fuehrungRadius, $fn=100);
cylinder(h=outerHeight+1, r=fuehrungRadius, $fn=100);

   