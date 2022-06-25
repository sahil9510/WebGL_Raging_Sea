uniform vec3 uDepthColor;
uniform vec3 uSurfaceColor;
uniform float uColorOffset;
uniform float uColorMultiplier;

varying float vElevation;

//	Classic Perlin 3D Noise 
//	by Stefan Gustavson
//


void main(){
    float mixStrength = (vElevation+uColorOffset)*uColorMultiplier;
    vec3 color = mix(uDepthColor,uSurfaceColor,mixStrength);
    gl_FragColor = vec4(color,1.0);
}