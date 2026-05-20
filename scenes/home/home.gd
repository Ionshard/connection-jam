extends Area2D

@onready var damage_component: DamageComponent = $DamageComponent




func _on_area_entered(area: Area2D) -> void:
	damage_component.apply(area)
