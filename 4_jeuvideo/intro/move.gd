@tool
extends CSGBox3D

@export var speed = 1
var t = 0.0

@export var amplitude := 1.0
@export var frequence := 1.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	t += delta
	position.y = amplitude * sin(t * frequence * 2.0 * PI)
