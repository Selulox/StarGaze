extends CharacterBody2D

func _physics_process(_delta):
	pass

func shoot():
	const Bullet = preload("res://Scenes/bullet.tscn")
	var new_bullet = Bullet.instantiate()
	new_bullet.global_position = %Shoot_Point.global_position
	new_bullet.global_rotation = %Shoot_Point.global_rotation
	%Shoot_Point.add_child(new_bullet)


func _on_shoot_timer_timeout() -> void:
	shoot()
