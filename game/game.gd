extends Node2D

@onready var craft_spell: Control = %CraftSpell


func _on_craft_spell_spell_crafted(spell: Spell) -> void:
	
	add_child(spell)
	pass # Replace with function body.
