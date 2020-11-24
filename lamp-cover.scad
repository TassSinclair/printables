
diam=130;
clip=diam-1;
overlap=diam+3;

difference() {
    cylinder(d=overlap,h=9, $fn=80);
    translate([0,0,2])
        cylinder(d=diam,h=5, $fn=80);
    translate([0,0,2])
        cylinder(d=clip,h=7, $fn=80);
    cylinder(d=diam-10,h=4, $fn=80);
    translate([-40,-80,-2])
%    cube([180,180,14]);
}
