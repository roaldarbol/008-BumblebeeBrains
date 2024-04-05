dissection_platform();

module dissection_platform(){
    length = 35;
    height = 10;
    tube_d = 9;
    head_length = 6;
    difference(){
        cube([length,30,height], center=true);
        translate([-head_length,0,height/2])
        rotate([0,90,0])
        cylinder(h=length, d = tube_d, center=true, $fn = 100);

        #translate([length/2-head_length,0,height/2+6])
        rotate([0,90,0])
        cylinder(h=head_length+2, d=15, $fn=6);
        // cube([10,10,10], center=true);
    }
}