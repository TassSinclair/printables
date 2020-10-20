

module back_block() {
  difference() {
    cube([15, 48, 12]);
    translate([2, -1, -2]) 
      cube([14, 50, 12]);
  }
}

module sensor_holder() {
    translate([12,24,20])
        rotate([0,90,0]) {
            difference() {
                                        translate([0,0,1])
                cylinder(r=22, h=12, $fn=50);
                cylinder(r=20.5, h=11, $fn=50);
                cylinder(r=18, h=14, $fn=50);
                translate([-32,-22, 0]) {
                  cube([40,44,30]);
        }
            }

        }
}

difference() {
    union() {
        back_block();
        sensor_holder();
    }
  translate([12,24,20])
    rotate([0,90,0]) {
        cylinder(r=20.5, h=11, $fn=50);
        
    }
}