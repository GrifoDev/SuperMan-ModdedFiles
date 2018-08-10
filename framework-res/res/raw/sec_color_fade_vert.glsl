uniform mat4 proj_matrix;
attribute vec2 position;
attribute vec2 uv;
varying vec2 UV;

void main()
{
    UV = vec2(uv.x, 1.0 - uv.y);
    gl_Position = proj_matrix * vec4(position.x, position.y, 0.0, 1.0);
}
