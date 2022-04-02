hsp = 0;
vsp = 0;
moveSpeed = 0.5;
hp = 100;
attackDelay = 0;

state = EnemyStateFree;

//Дистанции
enum DIST {
	CLOSE,
	MIDDLE,
	LONG
}

dist = DIST.CLOSE;

enum ENEMIES {
	SKELETON,
	NAGAY,
	WIZARD
}

enemy = ENEMIES.SKELETON;