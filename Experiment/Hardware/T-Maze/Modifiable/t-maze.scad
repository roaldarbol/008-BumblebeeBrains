width = 140;
length = 80;
height = 200;
height_mid = 80;
floor_length = 80;
thickness = 4;
rail_width = 8;
rail_height = 4;

t_maze(
    width = width,
    length = length,
    height = height,
    height_mid = height_mid,
    floor_length = floor_length,
    thickness = thickness);

module t_maze(
    width,
    length,
    height,
    height_mid,
    floor_length,
    thickness
    ){
        // Back piece
        difference(){
            cube([width, height, thickness], center = true);

            // Slits for transparent perspex
        }

        // Floor
        translate([0,-(height/2)+height_mid,floor_length/2])
        union(){
            cube([width, thickness, floor_length], center = true);

            // Rails
            for (i = [-1,1]){
                translate([i*(width-rail_width)/2,thickness,0])
                difference(){
                    cube([rail_width, rail_height, floor_length], center=true);
                    // Holes for 
            }
            }
        }

        // Walls for standing stability
        for (i = [-1,1]){
            translate([i*(width-thickness)/2,-(height/2)+height_mid/2,floor_length/2])
            cube([thickness, height_mid, floor_length], center=true);
        }

        
}