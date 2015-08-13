
em_height=5;
base_height=2;
unit=30; // Width of Emblem (mm)
circle_unit=30*314/300;

module base(){
	difference(){
		translate([-unit/2.0, -unit/2.0, -base_height])
			cube([unit, unit, em_height + base_height]);
			
		union(){
			cube([circle_unit, circle_unit/2.0, em_height+1]);
			translate([-circle_unit/2.0, -circle_unit/2.0, 0])
				cube([circle_unit/2.0, circle_unit/2.0, em_height+1]);
			cylinder(r=circle_unit/2.0, h=em_height+1, $fn=200);
		}
	}
}

module center_bar(){
	translate([-unit/(3.0*2.0), -unit/2.0, -base_height/2.0])
		cube([unit/3.0, unit, em_height+base_height/2.0]);
}

module top_left_circle(){
	translate([unit/3.0, unit/3.0, -base_height/2.0])
		cylinder(r=unit/6.0, h=em_height+base_height/2.0, $fn=200);
}


module tokyo_olympic_emblem(){
	union(){
		base();
		center_bar();
		top_left_circle();
	}
}

tokyo_olympic_emblem();