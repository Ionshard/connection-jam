class_name MouseAnchor
extends Node2D

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		var mouse_motion := event as InputEventMouseMotion
		global_position = mouse_motion.position
