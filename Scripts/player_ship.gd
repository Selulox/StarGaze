extends CharacterBody2D

const SPEED = 300

func _physics_process(delta: float) -> void:
	var input = Input.get_vector('left', 'right', 'up', 'down')
	if input.length() > 0:
		velocity = input * SPEED
	else:
		velocity = velocity.move_toward(Vector2.ZERO, SPEED)
	
	if Input.is_action_just_pressed('left'):
		$AnimatedSprite2D.play("left")
	
	if Input.is_action_just_pressed('right'):
		$AnimatedSprite2D.play('right')
	
	if Input.is_action_just_pressed('down'):
		$AnimatedSprite2D.play('idle')
	
	if Input.is_action_just_pressed('up'):
		$AnimatedSprite2D.play('idle')

	move_and_slide()

func shoot():
	const Bullet = preload("res://Scenes/bullet.tscn")
	var new_bullet = Bullet.instantiate()
	%Shoot_Point.get_tree().get_root().add_child(new_bullet)
	new_bullet.position = %Shoot_Point.global_position
	

func _on_shoot_timer_timeout() -> void:
	shoot()
