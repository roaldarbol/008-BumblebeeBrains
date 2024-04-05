height = 157;
width = 157;
thickness = 2.5;
slit_height = 15.5;
slit_width = 15.5;
bottom_clearance = 2;

t_maze_end(height, width);

module t_maze_end(
    height,
    width
) {
    difference(){
        square([width, height], center=true);
        translate([0,-(height-slit_height)/2])
        square([slit_width, slit_height], center=true);
    }
}