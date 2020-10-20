translate([0, 0, -15])
    difference() {
        cylinder(d=17,h=15, $fn=50);
        cylinder(d=15,h=15, $fn=50);
    }

difference() {
    cylinder(d1=17, d2=70, h=25, $fn=50);
    cylinder(d1=15, d2=68, h=25, $fn=50);
}

translate([0,0,25])
difference() {
    cylinder(d=70, h=10, $fn=50);
    cylinder(d=68, h=10, $fn=50);
    translate([0,0,43])
    rotate([0,90,0])
    cylinder(d=80, h=40, $fn=50);
}
