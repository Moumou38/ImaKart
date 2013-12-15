#version 330

out vec4 finalData;
in vec2 outUV;
in vec4 outColor;
in vec3 outNormal;
in vec3 outPosition;
in vec4 Shadowcoord;
uniform sampler2D diffuseTex;
uniform sampler2D normalTex;
uniform sampler2D depthTex;
uniform float Near;
uniform float Far;

float LinearizeDepth()
{
  float n = Near; // camera z near
  float f = Far; // camera z far
  float z = gl_FragCoord.z;
  return (2.0 * n) / (f + n - z * (f - n));	
}

float depth() {
	float tmp = LinearizeDepth();//gl_FragCoord.z;//1 - texture2D(depthTex, outUV)/Far;
	return tmp;
}
void main() {
	

	

	finalData = vec4(depth(),depth(),depth(),1.); 
}