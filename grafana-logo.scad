$fn=30;

module logo_2d() {
  scale([2,2,1])
  translate([-18,-19,0]) 
  scale([1.2, 1.2, 1.2])  // don't ask
  import("svg/Grafana_Logo_Swirl_Black.svg");
}

module logo_3d(d) {
  linear_extrude(d) {
    logo_2d();
  }
}

module magnet_holes(r) {
  h = 2.5;
  translate([21.5,-11.5, -.2]) cylinder(h, r=r);
  translate([3,25, -.2]) cylinder(h, r=r);
  translate([-21,-6, -.2]) cylinder(h, r=r);
}

rotate([180,0,0]) {
  difference() {
    scale([.8, .8, 1]) // yeah, fun
    logo_3d(5);
    magnet_holes(3.5);
  }
}
