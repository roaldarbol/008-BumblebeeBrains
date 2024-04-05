height = 157;
width = 157;
extra_width = 4;

t_maze_wall(height, width, extra_width);

module t_maze_wall(
    length,
    width,
    extra_width
) {
    square([width, length + 2*extra_width], center=true);
    square([width + 2*extra_width, length], center=true);
}