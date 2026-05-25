extends Control

signal spell_crafted(spell: Spell)

@onready var center_orbit_checkbox: CheckButton = %CenterOrbitCheckbox
@onready var pivot_orbit_checkbox: CheckButton = %PivotOrbitCheckbox
@onready var damage_checkbox: CheckButton = %DamageCheckbox

func _on_craft_button_pressed() -> void:
	var spell := Spell.new();
	if center_orbit_checkbox.toggled:
		var center_orbit := Orbit.new()
		center_orbit.radius = 200
		spell.paths.append(center_orbit)
	
	if pivot_orbit_checkbox.toggled:
		var pivot_orbit := Orbit.new()
		pivot_orbit.radius = 50
		pivot_orbit.angularVelocity = 20
		spell.paths.append(pivot_orbit)
		
	if damage_checkbox.toggled:
		var damage := Damage.new()
		damage.damage = 25
		spell.effects.append(damage)
	
	spell_crafted.emit(spell)
