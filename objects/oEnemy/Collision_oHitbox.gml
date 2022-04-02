if (!attackable) exit;

attackable = false;
alarm[0] = 30;

var _dir = point_direction(oPlayer.x, oPlayer.y, x, y);
hsp = lengthdir_x(knockSpeed, _dir);
vsp = lengthdir_y(knockSpeed, _dir);