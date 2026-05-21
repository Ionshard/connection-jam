extends Effect
class_name Damage

@export var damage: int

var damage_component := DamageComponent.new();

func _ready() -> void:
	call_deferred("setup")

func setup() -> void:
	damage_component.damage = damage

func apply(target: Node) -> void:
	damage_component.apply(target)
