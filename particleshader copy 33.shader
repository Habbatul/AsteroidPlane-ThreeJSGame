// Fragment shader program
uniform vec3 color;
uniform float time;
varying vec2 vUv;

void main() {
    float c = abs(sin(time + vUv.x * 10.0)) * 0.5 + 0.5;
    gl_FragColor = vec4(color * c, 1.0);
}
