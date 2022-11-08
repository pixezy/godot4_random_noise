shader_type spatial;

float rand (float x){
	return fract(sin(x)*100000.0); 
}
float random (vec2 uv) {
    return fract(sin(dot(uv.xy,
                         vec2(12.9898,78.233)))*
        43758.5453123);
}
void fragment() {
	float i = floor(UV.x);  // integer
	float f = fract(UV.x);  // fraction
	float y = mix(rand(i), rand(i + 1.0), smoothstep(0.,1.,f));
	ALBEDO = vec3(y);
	
}
