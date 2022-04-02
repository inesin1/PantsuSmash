function PlayerCollision(){
	//Horiz
	if (place_meeting(x + hsp, y, oCollision)) {
		while(!place_meeting(x + sign(hsp), y, oCollision)) {
			x += sign(hsp);
		}
	
		hsp = 0;
	}

	x += hsp;

	//Vert
	if (place_meeting(x, y + vsp, oCollision)) {
		while(!place_meeting(x, y + sign(vsp), oCollision)) {
			y += sign(vsp);
		}
	
		vsp = 0;
	}

	y += vsp;
}