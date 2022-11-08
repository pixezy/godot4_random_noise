shader_type spatial;
float random (vec2 uv) {
    return fract(sin(dot(uv.xy,
                         vec2(12.9898,78.233)))*
        43758.5453123);
}
void fragment() {
	ALBEDO = vec3(random(UV)); 
}
