$fn=100;
headplate();

module headplate(){
    hole_d=2;
    height = 7;
    offset_h = 2;
    difference(){
        hull(){
            cylinder(d1=hole_d, d2=30, h=height);
            translate([offset_h,0,0])
            cylinder(d1=hole_d, d2=30, h=height);
        }
        translate([0,0,0.3])
        hull(){
            cylinder(d1=hole_d, d2=30, h=height);
            translate([offset_h,0,0])
            cylinder(d1=hole_d, d2=30, h=height);
        }
        
        translate([0,0,-1])
        cylinder(d=hole_d, h=height);
    }
}