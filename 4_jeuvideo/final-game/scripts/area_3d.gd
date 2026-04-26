extends Area3D

@onready var normal = $CubeN
@onready var interact = $CubeI

func _ready():
	interact.hide()
	input_event.connect(_on_input_event)

func _on_input_event(camera, event, position, normal, shape_idx):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			print("Object clicked!")



func _on_mouse_entered() -> void:
	print("in")
	normal.hide()
	interact.show()


func _on_mouse_exited() -> void:
	print("out")
	interact.hide()
	normal.show()






#Aide de claude
#Je savais pas comment intérair avec un objet 3d 
# Réponse
#Method 1: Using Area3D (Easiest)
#Scene structure:
#Area3D
  #├── MeshInstance3D
  #└── CollisionShape3D
#Enable input on the Area3D — in the Inspector, turn on "Input Ray Pickable" (it's on by default).
#gdscriptextends Area3D
#
#func _ready():
	#input_event.connect(_on_input_event)
#
#func _on_input_event(camera, event, position, normal, shape_idx):
	#if event is InputEventMouseButton:
		#if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			#print("Object clicked!")
