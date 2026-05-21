extends Node
class_name Spell

@export var paths: Array[Path]
@export var effects: Array[Effect]
@export var body: Node2D
@export var anchor: Node2D

func _ready() -> void:
	call_deferred("setup")
	
func chain_paths() -> void:
	# Chain Paths together
	var prev_path: Path = null;
	for path in paths:
		if prev_path == null:
			path.anchor = anchor
		else:
			path.anchor = prev_path
		
		prev_path = path
	paths[-1].target = body;

	
func setup() -> void:
	chain_paths()

func apply(target: Node) -> void:
	for effect in effects:
		effect.apply(target)
