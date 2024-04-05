$fn = 100;
width = 50;
length = 60;
feeder_d = 50;
hole_d = 3.5;
makerbeam_w = 15;

feeder_shelf(width, length, feeder_d, hole_d, makerbeam_w);

module feeder_shelf(
    width,
    length,
    feeder_d,
    hole_d,
    makerbeam_w) {

    for (i = [0,1]){
        rotate([i*90,0,0])
        translate([0,(makerbeam_w/2),0])
        difference(){
            // Shelf
            translate([0,feeder_d/6,0])
            hull(){
                cube([feeder_d,feeder_d/3, makerbeam_w], center=true);
                translate([0,feeder_d/3,0])
                cylinder(d = feeder_d, h = makerbeam_w, center=true);
            }

            // Holes
            #rotate([-90,0,0])
            for (j = [-1,1]){
                translate([j*(feeder_d/2 - (makerbeam_w/2)),0,0]){
                cylinder(d = hole_d, h=feeder_d, $fn = 30);
                translate([0,0,2])
                cylinder(d = hole_d+6, h=feeder_d, $fn = 30);
                }
            }
        }
    }

    // Side supports
    translate([0,makerbeam_w/2,0])
    intersection(){
        translate([0,feeder_d/2,feeder_d/2+(makerbeam_w/2)])
        cube([feeder_d, feeder_d, feeder_d], center=true);
        rotate([0,90,0])
        rotate([0,0,45])
        cube([feeder_d-(makerbeam_w/2), feeder_d-(makerbeam_w/2), feeder_d], center=true);
    }
}