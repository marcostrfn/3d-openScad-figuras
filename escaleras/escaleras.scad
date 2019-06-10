


steps = 100;
ancho_escalon = 5;
alto_escalon = 5;

puntos = [
	for (a = [0 : 1: steps ]) [ 20 + a*ancho_escalon, 40, 50 - a*alto_escalon ]
];

union() {
for(x = puntos) cube(x);
}

