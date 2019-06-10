
// d = lado
module roundcuts_square(d,r,a) {
    intersection() {
        cube([d,d,d]);
        
        translate([d/2,d/2,0])
        cylinder(h=d, r=sqrt(d*d + (d-r)*(d-r))/2 + a);
    }
}
$fs=0.1;
roundcuts_square(200, 100, 15);

