color("red")
  translate([0, 0, -1.5]) {
  difference() {
//      cylinder (r=41/2, h=9, center=true, $fn=128);
//      cylinder (r=37/2, h=10, center=true, $fn=128);
  }
}

 
module inner_bit() {
//    rotate([0, 0, 90]){
    difference() {
        translate([-7, 0, 0]) {
            color("green") {
                cube([14, 24/2, 10]);
            }
        }
            translate([-4.5, 9.5, -1]) {
                cube([9, 5, 12]);
            }
            translate([-4.5, 6, 4.5]) {
                cube([9, 9, 8]);
            }
      }
  //}
 
}

module fork () {
    translate([0,-5,-12]) {
      cube([19, 10, 3]);
    }

    translate([16,-5, -9]) {
      cube([3, 10, 11]);
    }

    translate([0, -5, -14]) {
      cube([6, 10, 2]);
    }
}
fork();

rotate([0, 0, 180]) {
    fork();
}

translate([0, 0, -24]) {
    inner_bit();

    mirror([0, 1, 0]) {
    inner_bit();
    }
}

ClipPoints = [
  [5,  0,  0 ], // 0, outer bottom middle
  [5,  5,  0 ], // 1, outer bottom right
  
  [5,  5,  12], // 2, outer top right
  [5,  0,  12], // 3, outer top middle
  
  [0,  0,  12], // 4, inner top middle
  [0,  5,  12], // 5, inner top right
  
  [0,  5,  0 ], // 6, inner bottom right
  [0,  0,  0 ], // 7, inner bottom middle
  
  [0,  4,  0 ], // 8, inner bottom cliff
  [0,  4,  10], // 9, inner middle cliff
  [0,  0,  10], // 10, inner middle middle

  [2,  4,  10], // 11, deep middle cliff
  [2,  0,  10], // 12, deep middle middle
  
];

WedgeFaces = [
  [8, 7, 12, 11],
  [11, 12, 10, 9],
  [9, 8, 11], 
  [8, 9, 10, 7],
  [10, 12, 7],
];

clip_bit();
mirror([1, 0, 0]) {
  clip_bit();
}

module clip_bit() {
  translate([36/2-2, -5, 2]) {
    color("blue") {
      difference() {
        cube([3, 10, 9.5]);
      translate([-2, 1, -1.5]) {
          wedge();
      }
    }
  }
}

//wedge();

module wedge() {
         union() {
            translate([2, 0, 0]) {    
              polyhedron(ClipPoints, WedgeFaces);
            }
            translate([2, 4, 0]) {    
              polyhedron(ClipPoints, WedgeFaces);
            }
            cube([2, 8, 10]);
          }
        }   
}