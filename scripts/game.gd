extends Node2D

const PLAYING = 1
const LOSING = 2

onready var ze = get_node("Ze")
onready var bg_animated = get_node("BackgroundAnimated")
onready var timer_to_restart = get_node("TimerToRestartGame")

var score = 0
var status = PLAYING

func _ready():
	pass

func kill():
	ze.apply_impulse(Vector2(0, 0), Vector2(-1000, 0))
	bg_animated.stop()
	status = LOSING
	timer_to_restart.start()
	
func _on_TimerToRestartGame_timeout():
	get_tree().reload_current_scene()