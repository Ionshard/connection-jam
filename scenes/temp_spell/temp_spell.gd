extends Area2D
class_name TempSpell

@export var anchor: Node2D
@onready var spell: Spell = $Spell


func _ready() -> void:
	spell.anchor = anchor;


func _on_area_entered(area: Area2D) -> void:
	#print("Temp Spell Collision ", area)
	spell.apply(area)
	pass
