extends CanvasLayer

func update_score(): 
	if Global.current_score > Global.high_score:
		Global.high_score = Global.current_score
	Global.current_score = 0

func _on_replay_button_pressed() -> void:
	get_tree().paused = false
	get_tree().reload_current_scene()
	Global.current_score = 0


func _on_main_menu_button_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")


func _on_exit_game_button_pressed() -> void:
	get_tree().quit()
