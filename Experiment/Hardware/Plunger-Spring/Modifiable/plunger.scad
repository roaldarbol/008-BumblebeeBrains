$fn = 100;
stick_d = 6;
tube_d = 35;
n_springs = 6;
spring_inner_d = 3;
attachment_h = 0;

plunger_attachment(stick_d, tube_d, n_springs, spring_inner_d, attachment_h);

module plunger_attachment(stick_d, tube_d, n_springs, spring_inner_d, attachment_h){
    plate_h = 5;
    spring_angle = 360 / n_springs;
    spring_h = 1.5;
    difference(){
        union(){
            cylinder(d=tube_d, h = plate_h);
            cylinder(d=stick_d + 3, h=attachment_h+plate_h);
            for (i=[1:n_springs]){
                rotate([0,0,spring_angle*i])
                translate([(tube_d/2)-5,0,0])
                cylinder(d=spring_inner_d, h=plate_h+spring_h);
            }
        }
        cylinder(d=stick_d, h=(plate_h+attachment_h)*4, center=true);
    }
}