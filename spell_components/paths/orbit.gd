class_name Orbit
extends Path

@export var radius: int = 50
@export var angularVelocity: float = PI

var angle: float = 0


func tick(delta: float) -> void:
	angle += clampf(angularVelocity * delta, 0, TAU);
	target.global_position = anchor.global_position + (Vector2.from_angle(angle).normalized() * radius)
	
