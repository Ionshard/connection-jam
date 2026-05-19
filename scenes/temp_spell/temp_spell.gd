extends Area2D
class_name TempSpell

@export var anchor: Node2D

@onready var orbit: Path = $"Center Orbit"
@onready var damage_component: DamageComponent = $DamageComponent

func _ready() -> void:
	orbit.anchor = anchor


func _on_area_entered(area: Area2D) -> void:
	#print("Temp Spell Collision ", area)
	damage_component.apply(area)
