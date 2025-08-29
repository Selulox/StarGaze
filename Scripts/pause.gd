extends Control

@export var game_manager : GameManager

#func _ready() -> void:
	#hide()
	#game_manager.connect("toggle_game_paused", _on_game_manager_toggle_game_paused)

#func _on_game_manager_toggle_game_paused(is_paused : bool):
	#if (is_paused):
		#show()
	#else:
		#hide()

func _on_pause_button_pressed() -> void:
	%Paused_Menu.visible = true

func _on_options_pressed() -> void:
	%Options_Menu.visible = true
	%Paused_Menu.visible = false

func _on_options_exit_pressed() -> void:
	%Options_Menu.visible = false
	%Paused_Menu.visible = true

func _on_exit_game_pressed() -> void:
	get_tree().quit()

func _on_exit_to_main_menu_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

func _on_resume_pressed() -> void:
	%Paused_Menu.visible = false
	get_tree().paused = false

func _input(event: InputEvent) -> void:
	if Input.is_action_pressed("exit_button") and get_tree().paused == true:
		%Paused_Menu.visible = false
		get_tree().paused = false
