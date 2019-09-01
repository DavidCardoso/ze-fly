extends RigidBody2D

var game_scene

func _ready():
	game_scene = get_tree().get_current_scene()
	set_process_input(true)
	
func _input(event):
	# checks touch screen event, left button click works too
	if event.is_action_pressed("touch"):
		on_touch()

# moves up the character
func on_touch():
	if game_scene.status == game_scene.PLAYING:
		apply_impulse(Vector2(0, 0), Vector2(0, -1000))
		self.get_node("Sound").play()
