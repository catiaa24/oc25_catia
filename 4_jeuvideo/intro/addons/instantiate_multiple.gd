@tool
extends CSGCombiner3D
class_name InstantiateMultiple



@export var material : BaseMaterial3D
@export_tool_button("New Matrix", "CSGBox3D") var action1 = new_matrix

@export_tool_button("Delete All", "Remove") var action4 = delete_all

@export var repeat = Vector3i(2,2,2)
@export var step = Vector3(2,2,2)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

## Instantiates a CSG box.
func new_matrix():
	for x in repeat.x :
		for y in repeat.y :
			for z in repeat.z :
				var node = CSGBox3D.new()
				node.name = "Box"
				node.material = material
				add_child(node, true)
				node.position.x = x * step.x
				node.position.y = y * step.y
				node.position.z = z * step.z
				node.owner = get_tree().edited_scene_root



func delete_all():
	for child in get_children():
		child.free()

	
 
