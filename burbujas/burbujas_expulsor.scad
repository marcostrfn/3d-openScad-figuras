

altura = 5;
radio  = 80;
burbujas = 6;
radio_burbujas = radio / 5;
desplazamiento_burbuja = 20;
escala = [1.5,2.5,1];


echo(version=version());

module pieza() {
    
    difference() {
        union() {
            difference() {
                cylinder(h = altura, r = radio);
                translate([0,0,-6])
                cylinder(h = altura+12, r = radio-10);
            }

            for (i = [0:burbujas-1]) {
                echo(360*i/burbujas, sin(360*i/burbujas)*(radio+desplazamiento_burbuja),cos(360*i/burbujas)*(radio+desplazamiento_burbuja));
                translate([sin(360*i/burbujas)*(radio+desplazamiento_burbuja), cos(360*i/burbujas)*(radio+desplazamiento_burbuja), 0 ])
                rotate([0,0,0-360*i/burbujas])
                scale(escala) 
                cylinder(h = altura, r=radio_burbujas);
            }
        }

        color([1,0,0])
        for (i = [0:burbujas-1]) {
            echo(i, 360*i/burbujas, sin(360*i/burbujas)*(radio+desplazamiento_burbuja), cos(360*i/burbujas)*(radio+desplazamiento_burbuja));
            translate([sin(360*i/burbujas)*(radio+desplazamiento_burbuja), cos(360*i/burbujas)*(radio+desplazamiento_burbuja), -6 ])
            rotate([0,0,0-360*i/burbujas])
            scale(escala) 
            cylinder(h = altura+12, r=radio_burbujas-5);
        }
    }
    
    
    difference() {
        union() {
            for (i = [0:burbujas-1]) {
                rotate([0,0,0-360*i/burbujas])
                cube([5, radio-desplazamiento_burbuja+5, 5]);
            }
            cylinder(h = altura, r=20);
        }
    
        
        translate([6,0,-5])
        cylinder(h = altura+10, r=2);

        translate([-6,0,-5])
        cylinder(h = altura+10, r=2);
        
    }

}




pieza();



//rotate([0,0,90])
//scale([1.0,2.0,1.0]) 
//cylinder(h = altura, r=radio_burbujas);



        