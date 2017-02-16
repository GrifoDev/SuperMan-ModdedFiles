#extension GL_OES_EGL_image_external : require

precision highp float;

uniform samplerExternalOES texUnit;
uniform float collapse;
uniform float alphaStep;

varying vec2 UV;
varying vec2 UV2;

void main() {

    float _BL_XL  = 0.5 - 0.5*collapse;
    float _BL_XR  = 0.5 + 0.5*collapse;
    
    vec2 position         = UV;
    vec4 color            = texture2D(texUnit, UV);

    //smoothstep
    float delta   = 0.02;
    float color2  = 1.0;
    float al      = 0.0; 
    
    
    if(position.x <= 0.5){ 
         al = smoothstep(_BL_XL - delta,_BL_XL + delta,position.x);
         color2 =  (1.0 -al*(alphaStep));

    }
    if(position.x > 0.5){
        al = smoothstep(_BL_XR - delta,_BL_XR + delta,position.x);
       color2 = (1.0-alphaStep) + al*(alphaStep);
    }
    color = color*(color2);
    gl_FragColor = color;
}
