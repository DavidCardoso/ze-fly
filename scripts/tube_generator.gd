extends Position2D

onready var tube = preload("res://scenes/tube.tscn")

func _ready():
	randomize()

func _on_Timer_timeout():
	var new_tube = tube.instance()
	
	# changes Y index
	new_tube.set_pos(get_pos() + Vector2(0, rand_range(-500, 500)))
	
	get_owner().add_child(new_tube)
