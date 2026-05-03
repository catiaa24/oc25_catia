extends Camera3D

var tilt = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var input = Vector3.ZERO
	input.x = Input.get_axis('c_left', 'c_right')
	input.y = Input.get_axis('c_down', 'c_up')
	input.z = Input.get_axis('c_forward', 'c_backward')
	position += basis * input * 0.1
	
	var dir = Vector2.ZERO
	dir.x = Input.get_axis("ui_right", "ui_left")
	dir.y = Input.get_axis("ui_down", "ui_up")
	
	if dir:
		tilt += dir * 0.05
		tilt.y = clamp(-PI/2, tilt.y, PI/2)
		basis = Basis()
		rotation.y = tilt.x
		rotation.x = tilt.y
		
	if Input.is_action_just_pressed("escape"):
		Transition2.transition()
		await Transition2.on_transition_finished
		get_tree().change_scene_to_file("res://scenes/game.tscn")
