extends Node2D

@onready var enemy = preload("res://Scenes/enemy_1.tscn")
@onready var shapeSize = $"../Spawn_Area/SpawnArea_col".shape.extents
@onready var origin = $"../Spawn_Area/SpawnArea_col".global_position
@onready var spawnStart = origin - shapeSize
@onready var spawnEnd = origin + shapeSize

func _on_enemy_1_timer_timeout() -> void:
	var x = randf_range(spawnStart.x, spawnEnd.x)
	var y = randf_range(spawnStart.y, spawnEnd.y)
	var enemy1 = enemy.instantiate()
	enemy1.position = Vector2(x,y)
	get_parent().get_node('Spawn_Area/SpawnArea_col').add_child(enemy1)
