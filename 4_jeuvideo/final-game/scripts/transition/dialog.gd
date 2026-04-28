extends Node


var previous_scene = ""

var nbr_scene := {}

func ajouter(nom: String) -> int:
	if nbr_scene.has(nom):
		nbr_scene[nom] += 1
	else:
		nbr_scene[nom] = 1
	return nbr_scene[nom]

func nbr(nom : String) -> int:
	return nbr_scene.get(nom, 0)
#🤖Co ⬆️#

func _ready():
	previous_scene = get_tree().current_scene.name
	print("Scène actuelle enregistrée :", previous_scene)

func _process(delta: float) -> void: # ➡️ fonction process
	pass
