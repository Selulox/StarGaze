extends Node2D

var death_scene
var pause_scene

func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("exit_button"):
		get_tree().paused =true
		pause_scene = preload("res://Scenes/pause.tscn").instantiate()
		add_child(pause_scene) 

func _on_pause_button_pressed() -> void:
	get_tree().paused = true
	pause_scene = preload("res://Scenes/pause.tscn").instantiate()
	add_child(pause_scene)

func update_score(): 
	if Global.current_score > Global.high_score:
		Global.high_score = Global.current_score
	Global.current_score = 0

func _on_player_ship_health_depleted() -> void:
	update_score()
	get_tree().paused = true
	%High_Score_Label.visible = true
	%Game_Over_Screen.visible = true
