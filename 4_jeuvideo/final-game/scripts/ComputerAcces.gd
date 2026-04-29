extends Area3D

var entre = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if entre == false :
		pass
	
	else :
		
		if Input.is_action_just_released("interact"):
			print("screen")
			pass
		

func _on_body_entered(body: CharacterBody3D) -> void:
	print("in")
	entre = true


func _on_body_exited(body: Node3D) -> void:
	print("out")
	entre = false
