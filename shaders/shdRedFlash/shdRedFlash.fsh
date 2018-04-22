//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    // Get origiinal color and alpha of the pixels
    vec4 OriginalColor = texture2D( gm_BaseTexture, v_vTexcoord );
    
    //Output the new Color
    gl_FragColor.rgb = vec3 (1.0,0.0,0.0);
    gl_FragColor.a = OriginalColor.a;

}

