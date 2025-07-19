extends Node2D

func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("exit_button"):
		%Paused_Menu.visible = true
		get_tree().paused = true

func _on_options_pressed() -> void:
	%Options_Menu.visible = true
	%Paused_Menu.visible = false

func _on_about_pressed() -> void:
	%About_Menu.visible = true
	%Paused_Menu.visible = false

func _on_paused_menu_exit_pressed() -> void:
	%Paused_Menu.visible = false
	get_tree().paused = false

func _on_pause_button_pressed() -> void:
	%Paused_Menu.visible = true
	get_tree().paused = true
