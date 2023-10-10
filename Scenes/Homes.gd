extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	done = false

var check
var done
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	check = true
	if done == false:
		for i in self.get_children():
			if i.done == false:
				check = false
				break
	if check == true:
		$"..".end()
		done = true
