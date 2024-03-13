            varying vec2 vUv;
            uniform float time;

            void main() {
                vUv = uv;
                vec3 pos = position;

                // Menambahkan efek sinusoidal dengan amplitudo berubah-ubah
                float squishFactor = 0.1; // Ubah sesuai keinginan
                float squishSpeed = 2.0; // Ubah sesuai keinginan
                float squishAmplitude = 0.05; // Ubah sesuai keinginan

                float squish = squishFactor * sin(time * squishSpeed);
                pos.y -= squish * sin(pos.x * 5.0); // Ubah 5.0 sesuai keinginan

                gl_Position = projectionMatrix * modelViewMatrix * vec4(pos, 1.0);
            }