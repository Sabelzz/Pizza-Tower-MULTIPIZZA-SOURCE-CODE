scr_initenemy();
scr_pizzaface_p2_init_sounds();
leveldown = false;
fishcount = 1;
throwsword = false;
lastattack = -1;
miniguncount = 0;
brickcount = 0;
brick = false;
idle_buffer = 0;
availablemoves = [];
movecount[pizzaface_p2_attacks.pullinglevel] = 0;
movecount[pizzaface_p2_attacks.tv] = 0;
movecount[pizzaface_p2_attacks.gun] = 0;
movecount[pizzaface_p2_attacks.ratball] = 0;
movecount[pizzaface_p2_attacks.pinup] = 0;
bullethit = 0;
parryable = false;
instantkillable = false;
flameID = -4;
playerhit = 0;
introbuffer = 80;
important = true;
stompable = false;
shakestun = false;
elite = true;
elitehit = 8;
prevhp = elitehit;
turned = false;
wastedhits = 0;
state = states.walk;
hitboxID = -4;
attackspeed = 0;
hitboxID = -4;
destroyable = true;
idle_max = 240;
idle_timer = idle_max;
grav = 0.5;
hsp = 0;
vsp = 0;
stunned = 0;
alarm[0] = 150;
roaming = true;
collectdrop = 5;
flying = false;
straightthrow = false;
cigar = false;
cigarcreate = false;
stomped = false;
shot = false;
reset = false;
flash = false;
landspr = spr_pizzahead_giddy;
idlespr = spr_pizzahead_giddy;
fallspr = spr_pizzahead_giddy;
stunfallspr = spr_pizzahead_stun;
walkspr = spr_pizzahead_giddy;
turnspr = spr_pizzahead_giddy;
recoveryspr = spr_pizzahead_giddy;
grabbedspr = spr_pizzahead_stun;
scaredspr = spr_pizzahead_giddy;
ragespr = spr_pizzahead_giddy;
hp = 1;
slapped = false;
grounded = true;
birdcreated = false;
boundbox = false;
spr_dead = spr_pizzahead_stun;
important = false;
heavy = true;
paletteselect = 0;
spr_palette = palette_cheeseslime;
grabbedby = 0;
stuntouchbuffer = 0;
scaredbuffer = 0;
cooldown = 40;
phase = 1;
dir = 1;
woosh = false;
flickertime = 0;
touchedground = false;
cowcrate = 0;
alarm[8] = 1200;
