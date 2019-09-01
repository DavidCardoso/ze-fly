extends Node2D

var speed = -400
var game_scene

func _ready():
	game_scene = get_tree().get_current_scene()
	set_process(true)
	
func _process(delta):
	if game_scene.status == game_scene.PLAYING:
		# moves the tube to left
		set_pos(get_pos() + Vector2(speed * delta, 0))
	
	# destroys the tube
	if get_pos().x < -100:
		queue_free()

func _on_Area2D_body_enter( body ):
	if body.get_name() == "Ze":
		game_scene.kill()
