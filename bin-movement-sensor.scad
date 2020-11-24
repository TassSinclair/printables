barrel_radius = 3.5;
// Inner
translate([0, 5.5, 0]) {
    difference() {
        union() {
            cube([40, 43, 1.5]);
            translate([0, 0, barrel_radius]) {
                rotate([-90, 0, 0])
                difference() {
                // outer tube
                cylinder(r=barrel_radius, h=43, $fn=40);
                translate([0, 0, 6.5])
                // outer tube cutout
                cylinder(r=barrel_radius, h=30, $fn=40);
                }

            }
        }
    
    translate([0, 0, barrel_radius]) 
       rotate([-90, 0, 0])
    difference() {
        cylinder(r=1.5, h=43, $fn=40);
        translate([0, 0, 5])
%            cylinder(r=3, h=30, $fn=40);
    }   
    }
}

/*
//translate([0, 60, 0]) {
    // Outer pipe
    translate([0, 0, 1.25]) {
        rotate([-90, 0, 0])
        difference() {
            cylinder(r=1.25, h=54, $fn=40);
            translate([0, 0, 11.5]) 
            cylinder(r=1.25, h=31, $fn=40);
        }
    }

    // Outer
        difference() {
            cube([60, 54, 2]);
            translate([0, 5, -1]) {
                cube([50, 44, 4]);
            }
        }
//    }
/**/