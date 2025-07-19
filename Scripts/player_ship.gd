extends CharacterBody2D

const SPEED = 300

func _physics_process(delta: float) -> void:
	var input = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	if input.length() > 0:
		velocity = input * SPEED
	else:
		velocity = velocity.move_toward(Vector2.ZERO, SPEED)
	
	if Input.is_action_just_pressed("ui_left"):
		$AnimatedSprite2D.play("left")
	
	if Input.is_action_just_pressed("ui_right"):
		$AnimatedSprite2D.play('right')
	
	if Input.is_action_just_pressed('ui_down'):
		$AnimatedSprite2D.play('idle')
	
	if Input.is_action_just_pressed('ui_up'):
		$AnimatedSprite2D.play('idle')

	move_and_slide()

func shoot():
	const Bullet = preload("res://Scenes/bullet.tscn")
	var new_bullet = Bullet.instantiate()
	new_bullet.position = %Shoot_Point.position
	new_bullet.rotation = %Shoot_Point.rotation
	%Shoot_Point.add_child(new_bullet)

func _on_shoot_timer_timeout() -> void:
	shoot()
