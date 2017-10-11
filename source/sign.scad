
use <bolts.scad>;
use <allerta-stencil/AllertaStencil-Regular.ttf>;

module sign(width = 200, height = 32) {
	difference() {
		translate([-width/2, -height/2, 0]) cube([width, height, 2]);
		
		linear_extrude(2) {
			text("NO JUNK MAIL", valign="center", halign="center", size=19, font="Allerta Stencil");
		}
	}
}

difference() {
	sign();
	
	translate([-96, 12, 0]) countersunk_hole(depth=2);
	translate([96, 12, 0]) countersunk_hole(depth=2);
	translate([-96, -12, 0]) countersunk_hole(depth=2);
	translate([96, -12, 0]) countersunk_hole(depth=2);
	
	translate([-47, 0, 0]) countersunk_hole(depth=2);
	translate([23, 0, 0]) countersunk_hole(depth=2);
}
