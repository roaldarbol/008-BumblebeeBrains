$fn = 30;
headplate_w = 20;
headplate_h = 5;
depth = 20;

headplate_mount(headplate_w, headplate_h, depth);

module headplate_mount(
    headplate_w,
    headplate_h,
    depth
){
    diff = 3;
    mm_head = [22, 17, 10+diff/2];
    bolt_d = 4.2;
    magnet_h = 3.2;
    magnet_d = 6.4;
    // Micromanipulator attachment piece of cube
    difference(){
        cube(mm_head, center=true);
        translate([0,diff,-diff])
        cube(mm_head, center=true);

        rotate([0,0,0])
        translate([-6.5,0,(mm_head[2]-(diff))/2])
        hull(){
            cylinder(h=diff+1, d = bolt_d, center=true);
            translate([0,10,0])
            cylinder(h=diff+1, d = bolt_d, center=true);
        }
    }
    
    // Headplate mount piece
    attachment_outer = [mm_head[0], headplate_w + diff*2, depth];
    attachment_inner = [headplate_h, headplate_w, depth-diff];
    translate([0,-(mm_head[1]+headplate_w + diff*2)/2+diff,-depth/2+mm_head[2]/2])
    difference(){
        cube(attachment_outer, center=true);
        translate([-diff,diff/2,diff/2])
        cube(attachment_inner, center=true);
        rotate([0,90,0])
        translate([0,diff/2,diff])
        hull(){
            cylinder(h=magnet_h, d = magnet_d, center=true);
            translate([-20,0,0])
            cylinder(h=magnet_h, d = magnet_d, center=true);
        }
        
    }
}