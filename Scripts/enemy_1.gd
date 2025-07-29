extends CharacterBody2D

var points_for_kill = 100
const Speed = 100
var health = 1
@onready var player = get_node("res://Scenes/player_ship.tscn")

#make enemies spawn and move as one
func _physics_process(_delta: float) -> void:
	var direction = Vector2.DOWN
	position += direction * Speed * _delta
	move_and_slide()

func take_damage():
	health -= 1
	if health == 0:
		Global.current_score += points_for_kill
		queue_free()

func shoot():
	const Bullet = preload("res://Scenes/enemy_bullet.tscn")
	var new_bullet = Bullet.instantiate()
	%Shoot_Point_Enemy.get_tree().get_root().add_child(new_bullet)
	new_bullet.position = %Shoot_Point_Enemy.global_position


func _on_shoot_time_timeout() -> void:
	shoot()
