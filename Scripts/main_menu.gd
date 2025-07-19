extends Node2D


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
