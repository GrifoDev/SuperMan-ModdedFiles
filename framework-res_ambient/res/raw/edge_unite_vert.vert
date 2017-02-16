uniform mat4 proj_matrix;
uniform mat4 tex_matrix;
uniform vec2 dev_dim;

attribute vec2 position;
attribute vec2 uv;

varying vec2 UV;
varying vec2 UV2;

void main()
{
    vec4 transformed_uv = tex_matrix * vec4(uv.x, uv.y, 1.0, 1.0);
    UV = transformed_uv.st / transformed_uv.q;
    UV2 = UV * dev_dim;
    UV2 -= vec2(0.5, 0.5*dev_dim.y);
    gl_Position = (proj_matrix * vec4(position.x, position.y, 0.0, 1.0));
}
