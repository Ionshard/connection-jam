class_name HealthComponent
extends Node

@export var max_health: int = 100;

signal health_changed(current_health: int, max_health: int)
signal health_depleated

var health: int = 0 : set = _on_health_set

func _ready() -> void:
	set_deferred("health", max_health)

func _on_health_set(new_value: int) -> int:
	health = clampi(new_value, 0, max_health)
	health_changed.emit(health, max_health)
	if(health == 0): health_depleated.emit()
	print("Health: ", health)
	return health

func restore() -> void:
	health = max_health;

static func find(node: Node) -> HealthComponent:
	var maybe_health_component := node.get_node_or_null("HealthComponent");
	return maybe_health_component if maybe_health_component is HealthComponent else null
