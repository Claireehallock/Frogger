extends Area2D

var frog_texture = preload("res://Assets/HomeFrog.png")
var water_texture = preload("res://Assets/Water.png")
var done
# Called when the node enters the scene tree for the first time.
func _ready():
	done = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if overlaps_area($"../../Player"):
		$"../../Player".die()
		frog()


func frog():
	get_node("Sprite2D").texture = frog_texture
	done = true

