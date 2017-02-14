attribute vec2 a_position;
attribute vec2 a_texCoord;
attribute float a_bias;
varying vec2 v_texCoord;

uniform mat3 s_PMatrix;
uniform mat3 s_MMatrix;
uniform int captureFlag;
uniform float anglerot;

uniform vec2 size;
void main()
{
	gl_Position = vec4(a_position,0.0,1.0);
	
    /*vec2 imgCoord = a_texCoord*size;
    vec3 newTexCoord = s_PMatrix *  vec3(imgCoord, 1.0);
    newTexCoord /= newTexCoord.z;
    newTexCoord.xy /= size;
       v_texCoord = newTexCoord.xy;
    
    
    float angle_deg = anglerot;
    float trans_x = -0.5;
    float trans_y = -0.5;
    float angle_rad = angle_deg * 3.14 / 180.0;
    float final_x = (cos(angle_rad) * (newTexCoord.x )) - (sin(angle_rad) * (newTexCoord.y )) + ((trans_x * cos(angle_rad)) - (trans_y * sin(angle_rad)) - trans_x);
    float final_y = (sin(angle_rad) * (newTexCoord.x )) + (cos(angle_rad) * (newTexCoord.y )) + ((trans_x * sin(angle_rad)) + (trans_y * cos(angle_rad)) - trans_y);
    v_texCoord = vec2(final_x, final_y);*/
  
  	vec3 newTexCoord = vec3(a_texCoord.xy, 1.0);
  
    float angle_deg = anglerot;
    float trans_x = -0.5;
    float trans_y = -0.5;
    float angle_rad = angle_deg * 3.14 / 180.0;
    float final_x = (cos(angle_rad) * (newTexCoord.x )) - (sin(angle_rad) * (newTexCoord.y )) + ((trans_x * cos(angle_rad)) - (trans_y * sin(angle_rad)) - trans_x);
    float final_y = (sin(angle_rad) * (newTexCoord.x )) + (cos(angle_rad) * (newTexCoord.y )) + ((trans_x * sin(angle_rad)) + (trans_y * cos(angle_rad)) - trans_y);
    v_texCoord = vec2(final_x, final_y);
    
    gl_Position = vec4(a_position,0.0,1.0);
    vec2 imgCoord = v_texCoord*size;
    newTexCoord = s_PMatrix *  vec3(imgCoord, 1.0);
    newTexCoord /= newTexCoord.z;
    newTexCoord.xy /= size;
       v_texCoord = newTexCoord.xy;
}