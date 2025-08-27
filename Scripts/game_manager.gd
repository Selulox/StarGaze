extends Node

class_name GameManager

@onready var pause: Control = $PAUSE
var death_scene
var pause_scene
var game_paused : bool = false:
	get:
		return game_paused 
	set(value):
		game_paused = value
		get_tree().paused = game_paused
		emit_signal("toggle_game_paused", game_paused)

signal toggle_game_paused(is_paused : bool)

func _input(event: InputEvent) -> void:
	if Input.is_action_pressed("exit_button"):
		game_paused = !game_paused

func update_score(): 
	if Global.current_score > Global.high_score:
		Global.high_score = Global.current_score
	Global.current_score = 0

func _on_player_ship_health_depleted() -> void:
	update_score()
	get_tree().paused = true
	%High_Score_Label.visible = true
	%Game_Over_Screen.visible = true
