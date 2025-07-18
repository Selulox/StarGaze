extends Area2D

var travelled_distance = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	const speed = 450
	const range = 750
	var direction = Vector2.UP
	position += direction * speed * delta 
	travelled_distance += speed * delta 
	if travelled_distance > range:
		queue_free() 

func _on_body_entered(body: Node2D) -> void:
	queue_free()
	if body.has_method('take_damage'):
		body.take_damage()
 
