extends Node2D

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
