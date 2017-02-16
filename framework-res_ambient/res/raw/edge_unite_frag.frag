#extension GL_OES_EGL_image_external : require

precision highp float;

uniform samplerExternalOES texUnit;
uniform sampler2D gradient;
uniform float collapse;
uniform float opacity;
uniform float feather;
varying vec2 UV;

//maxFeatherSpread is based on ratio of max width in dp of the feather to device's size in dp(50dp/450dp) and device's aspect ratio (0.5625 in our case)
void main() {
    vec4 color = texture2D(texUnit, UV.xy);
    vec2 uPos = abs(UV * 2.0 - 1.0);
	if(uPos.x <= (collapse- feather))
	{
		gl_FragColor = color*opacity;
	}
	else if(uPos.x > (collapse))
	{
		gl_FragColor = vec4(0.0,0.0,0.0,1.0);
	}
    else {
		float index  = (1.0 - ((uPos.x - (collapse- feather))/0.35));
		gl_FragColor = color*vec4(texture2D(gradient, vec2(index,0.5)).rgb,1.0)*opacity;
	}
}