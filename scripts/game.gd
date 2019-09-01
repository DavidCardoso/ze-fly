extends Node2D

const PLAYING = 1
const LOSING = 2

var score = 0
var status = PLAYING

onready var ze = self.get_node("Ze")
onready var bg_animated = self.get_node("BackgroundAnimated")
onready var timer_to_restart = self.get_node("TimerToRestartGame")
onready var score_label = self.get_node("Score/Label")
onready var score_sound = self.get_node("Score/Sound")

func _ready():
	pass

func kill():
	ze.apply_impulse(Vector2(0, 0), Vector2(-1000, 0))
	ze.get_node("Sound").stop()
	bg_animated.stop()
	status = LOSING
	timer_to_restart.start()

func increment_score():
	score += 1
	score_label.set_text(str(score))
	score_sound.play()

func _on_TimerToRestartGame_timeout():
	get_tree().reload_current_scene()
