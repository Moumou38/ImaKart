#version 330

out vec4 finalData;
uniform sampler2D normalTex;
uniform sampler2D diffuseTex;
uniform sampler2D ambiantTex;
uniform float Near;
uniform float Far;

uniform vec3 lightDir;
uniform vec3 lightColor;
uniform float lightIntensity;
uniform float screenW;
uniform float screenH;

float celShad(float val) {
	if(val >= 0.7)
		return 1.f;
	if(val >= 0.5)
		return 0.5f;
	if(val >= 0.2)
		return 0.2f;
	return 0.f;
}

void main() {
	vec2 coord = vec2(gl_FragCoord.x/screenW, gl_FragCoord.y/screenH);
	
	

	vec3 N = normalize(texture2D(normalTex,coord).rgb);
	vec3 L = normalize(-lightDir);
	float P = texture2D(diffuseTex, coord).w;
	if(P < .5) {
		finalData = vec4(1.,1.,1.,1.); // - vec4(lightColor*lightIntensity*celShad(max(dot(L,N), 0.f)),0.f);
		return;
	}
	finalData = vec4(lightColor*lightIntensity*celShad(max(dot(L,N), 0.f)),1.f);
}