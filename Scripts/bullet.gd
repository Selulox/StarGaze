extends Area2D

var travelled_distance = 0
var despawn_time = 1
const speed = 450
const range = 750

func _ready() -> void:
	despawn()

func _physics_process(delta):
	var direction = Vector2.UP
	position += direction * speed * delta 
	travelled_distance += speed * delta 
	if travelled_distance > range:
		queue_free() 

func _on_body_entered(body: Node2D) -> void:
	queue_free()
	if body.has_method('take_damage'):
		body.take_damage()
 
func despawn() -> void:
	await get_tree().create_timer(despawn_time).timeout
	queue_free()
