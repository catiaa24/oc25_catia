@tool
extends Polygon2D

@export var speed = 1
var t = 0.0

@export var amplitude := 5.0

@export var frequence := 1.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	t += delta
	position.x = 5 * sin(t * frequence * 2.0 * PI) + 1010
