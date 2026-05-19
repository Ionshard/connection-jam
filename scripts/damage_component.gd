class_name DamageComponent
extends Node

@export var damage: int = 1;

func apply(target: Node) -> void:
	#print("Applying Damage: ", target, damage)
	var health_component := HealthComponent.find(target)
	#print("Found health component: ", health_component)
	if not health_component: return
	health_component.health -= damage;
