extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var speed = 80
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x+=speed*delta
	if !overlaps_area($"../../../Background/WindowSize"):
		if speed <= 0:
			position.x=448
		else:
			position.x=0

	if overlaps_area($"../../../Player"):
		$"../../../Player".push(speed)
