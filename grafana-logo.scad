$fn=30;

module logo_2d() {
  scale([1.9,1.9,1])
  translate([-15,-16,0]) 
  import("svg/Grafana_Logo_Swirl_Black.svg");
}

module logo_3d(d) {
  linear_extrude(d) {
    logo_2d();
  }
}

module magnet_holes(r) {
  h = 2.3; // was 2.5
  translate([21.5,-11.5, -.2]) cylinder(h, r=r);
  translate([3,25, -.2]) cylinder(h, r=r);
  translate([-21,-6, -.2]) cylinder(h, r=r);
}

rotate([180,0,0]) {
  difference() {
    logo_3d(5);
    magnet_holes(3.2); // was 3.5
  }
}
