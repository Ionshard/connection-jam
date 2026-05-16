extends Marker2D

@export var speed = 500;
#@export var angle = 0;
@export var range = 300;

@onready var effect = $Effect

var direction = 1;


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _physics_process(delta: float) -> void:
	effect.global_position.x += speed * direction * delta;
	
	var offset_vector = global_position - effect.global_position;
	var offset = offset_vector.length();
	#print("Offset ", offset)
	
	if (global_position - effect.global_position).length() > range:
		direction *= -1;


func _on_area_2d_area_entered(area: Area2D) -> void:
	print("HIT!");
