extends Node2D

var speed = -400

func _ready():
	set_process(true)
	
func _process(delta):
	# moves the tube to left
	set_pos(get_pos() + Vector2(speed * delta, 0))
	
	# destroys the tube
	if get_pos().x < -100:
		queue_free()
	
