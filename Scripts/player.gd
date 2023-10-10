extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var pushspeed=0
var movexspeed=0
var moveyspeed=0

var overlap

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x+=pushspeed*delta
	position.x+=movexspeed
	position.y-=moveyspeed
	pushspeed=0
	movexspeed=0
	moveyspeed=0
	
	overlap=get_overlapping_areas()
	if overlaps_area($"../Background/Water"):
		if overlap.size()==2:
			die()

func die():
	position.x=224
	position.y=464

func push(inspeed):
	pushspeed = inspeed

func _input(event):
	if Input.is_action_just_pressed("Down"):
		if position.y<496:
			moveyspeed=-32
	if Input.is_action_just_pressed("Up"):
		if position.y>16:
			moveyspeed=32
	if Input.is_action_just_pressed("Right"):
		if position.x<432:
			movexspeed=32
	if Input.is_action_just_pressed("Left"):
		if position.x>16:
			movexspeed=-32
