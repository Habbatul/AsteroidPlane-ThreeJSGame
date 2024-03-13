                varying vec2 vUv;
                uniform float time;
                void main() {
                    vUv = uv;
                    vec3 pos = position;
                    pos.x += sin(pos.y * 10.0 + time) * 0.1; // Animasi dengan sinus
                    gl_Position = projectionMatrix * modelViewMatrix * vec4(pos, 1.0);
                }