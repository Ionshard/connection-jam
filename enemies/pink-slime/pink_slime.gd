class_name PinkSlime extends Area2D

@onready var progress_bar: ProgressBar = $ProgressBar

func _on_health_component_health_changed(current_health: int, max_health: int) -> void:
	progress_bar.value = current_health
	progress_bar.max_value = max_health


func _on_health_component_health_depleated() -> void:
	queue_free()
