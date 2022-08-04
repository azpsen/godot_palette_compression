shader_type canvas_item;

uniform vec4 color_1 : hint_color = vec4(0.45, 0.5, 0.41, 1.0);
uniform vec4 color_2 : hint_color = vec4(0.12, 0.12, 0.11, 1.0);
uniform vec4 color_3 : hint_color = vec4(0.56, 0.38, 0.35, 1.0);
uniform vec4 color_4 : hint_color = vec4(0.59, 0.59, 0.52, 1.0);
uniform vec4 color_5 : hint_color = vec4(0.29, 0.35, 0.41, 1.0);
uniform vec4 color_6 : hint_color = vec4(0.20, 0.23, 0.25, 1.0);

uniform bool enabled = true;

vec4 nearest_color(vec4 color) {
	float dist_col1 = pow(color_1.x - color.x, 2) + pow(color_1.y - color.y, 2) + pow(color_1.z - color.z, 2);
	float dist_col2 = pow(color_2.x - color.x, 2) + pow(color_2.y - color.y, 2) + pow(color_2.z - color.z, 2);
	float dist_col3 = pow(color_3.x - color.x, 2) + pow(color_3.y - color.y, 2) + pow(color_3.z - color.z, 2);
	float dist_col4 = pow(color_4.x - color.x, 2) + pow(color_4.y - color.y, 2) + pow(color_4.z - color.z, 2);
	float dist_col5 = pow(color_5.x - color.x, 2) + pow(color_5.y - color.y, 2) + pow(color_5.z - color.z, 2);
	float dist_col6 = pow(color_6.x - color.x, 2) + pow(color_6.y - color.y, 2) + pow(color_6.z - color.z, 2);
	float closest = min(min(min(min(min(dist_col1, dist_col2), dist_col3), dist_col4), dist_col5), dist_col6);
	if (closest == dist_col1) return color_1;
	if (closest == dist_col2) return color_2;
	if (closest == dist_col3) return color_3;
	if (closest == dist_col4) return color_4;
	if (closest == dist_col5) return color_5;
	if (closest == dist_col6) return color_6;
	return vec4(0.0, 0.0, 0.0, 1.0);
}

void fragment() {
	vec4 col = texture(TEXTURE, UV);
	
	if (enabled) {
		COLOR = nearest_color(col);
	} else {
		COLOR = col;
	}
}