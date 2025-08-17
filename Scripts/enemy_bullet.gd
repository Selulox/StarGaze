extends Area2D

var despawn_time = 1
const speed = 450
@onready var enemy = get_node("res://Scenes/enemy_1.tscn")

func _ready() -> void:
	despawn()

func _physics_process(delta):
	var direction = Vector2.DOWN
	position += direction * speed * delta 

func _on_body_entered(body: Node2D) -> void:
	queue_free()
	if body.has_method('take_damage'):
		body.take_damage()
	

func despawn() -> void:
	await get_tree().create_timer(despawn_time).timeout
	queue_free()
