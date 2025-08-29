extends Node


func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/game.tscn")

func _on_exit_pressed() -> void:
	get_tree().quit()

func _on_options_pressed() -> void:
	%Options_Menu.visible = true

func _on_options_exit_pressed() -> void:
	%Options_Menu.visible = false

func _on_about_pressed() -> void:
	%About_Menu.visible = true

func _on_about_exit_pressed() -> void:
	%About_Menu.visible = false

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("exit_button"):
		if %About_Menu.visible == true:
			%About_Menu.visible = false
		if %Options_Menu.visible == true:
			%Options_Menu.visible = false
