precision mediump float;

varying vec2 v_texCoord;
uniform sampler2D s_texture;

uniform sampler2D y_texture;
uniform sampler2D uv_texture;
			 


void main()     
{
	
 	float r, g, b, y, u, v;
 
 	y = texture2D(y_texture, v_texCoord).r;
 	
 	v = texture2D(uv_texture, v_texCoord).a - 0.5;
	u = texture2D(uv_texture, v_texCoord).r - 0.5;

	
	r = y + 1.370705*v;
	g = y - 0.337633*u - 0.698001*v;
	b = y + 1.732446*u;
	
	gl_FragColor = vec4(r,g,b, 1.0);
 
	
	
	/*vec4 col;

	
	col = texture2D(s_texture,v_texCoord);
	
	//col = s_KInvMatrix * s_PMatrix * s_KMatrix * col;
	gl_FragColor = vec4(col.rgb, col.a);
	
	
 	gl_FragColor = texture2D(y_texture, v_texCoord);*/
}  