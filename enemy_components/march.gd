class_name March
extends Node

@export var node: Node2D
@export var target: Node2D

@export var speed: int = 100

func _physics_process(delta: float) -> void:
	node.global_position += node.global_position.direction_to(target.global_position) * speed * delta
