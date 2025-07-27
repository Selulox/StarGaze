extends Node2D

@onready var enemy = preload("res://Scenes/enemy_1.tscn")



func _on_enemy_1_timer_timeout() -> void:
	var enemy1 = enemy.instantiate()
	enemy1.position = position
	get_parent().get_node('SpawnPoint').add_child(enemy1)
