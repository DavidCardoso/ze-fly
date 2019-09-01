extends RigidBody2D

func _ready():
	set_process_input(true)
	
func _input(event):
	# checks touch screen event, left button click works too
	if event.is_action_pressed("touch"):
		on_touch()

# moves up the character
func on_touch():
	apply_impulse(Vector2(0, 0), Vector2(0, -1000))
	
