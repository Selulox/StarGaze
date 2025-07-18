extends CharacterBody2D

var points_for_kill = 100
var health = 2
const xp_drop = 10.0
@onready var player = get_node("res://Scenes/player_ship.tscn")


func _physics_process(_delta: float) -> void:
	var direction = global_position.direction_to(player.global_position)
	velocity = direction * 100 
	move_and_slide()

func take_damage():
	health -= 1
	if health == 0:
		Global.current_score += points_for_kill
		Global.player_xp += xp_drop
		queue_free()
