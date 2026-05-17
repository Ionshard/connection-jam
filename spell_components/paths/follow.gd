class_name Follow
extends Path

@export var speed: int = 0;

func tick(delta: float) -> void:
	if speed == 0:
		target.global_position = anchor.global_position
		return
	
	target.global_position += target.global_position.direction_to(anchor.global_position) * speed * delta
