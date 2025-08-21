extends Control

func _on_pause_button_pressed() -> void:
	%Paused_Menu.visible = true

func _on_paused_menu_exit_pressed() -> void:
	%Paused_Menu.visible = false
	get_tree().paused = false

func _on_options_pressed() -> void:
	%Options_Menu.visible = true
	%Paused_Menu.visible = false

func _on_about_pressed() -> void:
	%About_Menu.visible = true
	%Paused_Menu.visible = false

func _on_options_exit_pressed() -> void:
	%Options_Menu.visible = false
	%Paused_Menu.visible = true

func _on_about_exit_pressed() -> void:
	%About_Menu.visible = false
	%Paused_Menu.visible = true

func _on_exit_game_pressed() -> void:
	get_tree().quit()

func _on_exit_to_main_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
