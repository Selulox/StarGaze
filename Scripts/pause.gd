extends Control

func _on_pause_button_pressed() -> void:
	%Paused_Menu.visible = true

func _on_paused_menu_exit_pressed() -> void:
	%Paused_Menu.visible = false

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
