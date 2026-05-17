@abstract
class_name Path
extends Node2D

@export var anchor: Node2D
@export var target: Node2D = self

@abstract func tick(delta: float) -> void

func _physics_process(delta: float) -> void:
	if not anchor: return
	tick(delta)
