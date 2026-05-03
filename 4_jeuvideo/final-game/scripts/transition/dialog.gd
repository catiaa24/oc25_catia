extends Node

var previous_scene = ""
var current_scene = ""

func _ready():
	# Attend que la scène soit vraiment chargée
	current_scene = get_tree().current_scene.name
	get_tree().root.child_order_changed.connect(_on_scene_changed)

func _on_scene_changed():
	var new_scene = get_tree().current_scene
	if new_scene and new_scene.name != current_scene:
		previous_scene = current_scene
		current_scene = new_scene.name
		print("Previous:", previous_scene, " | Current:", current_scene)

# J'avais un problème avec le changement de scène pour les dialogue et j'ai
# dmd à Claude quel était le problème de ce code et c'est que previous_scene
# s'exécute qu'une seule fois

#Réponse
#L'erreur vient du fait que dans _ready() de l'autoload, get_tree().current_scene est encore null car l'autoload se charge avant que la première scène soit prête.
#Fix
#gdscriptextends Node
#
#var previous_scene = ""
#var current_scene = ""
#
#func _ready():
	# Attend que la scène soit vraiment chargée
	#await get_tree().process_frame
	#current_scene = get_tree().current_scene.name
	#get_tree().root.child_order_changed.connect(_on_scene_changed)
#
#func _on_scene_changed():
	#var new_scene = get_tree().current_scene
	#if new_scene and new_scene.name != current_scene:
		#previous_scene = current_scene
		#current_scene = new_scene.name
		#print("Previous:", previous_scene, " | Current:", current_scene)
#Le await get_tree().process_frame attend une frame avant d'exécuter la suite, ce qui laisse le temps à Godot de charger la première scène correctement.

#Réponses
#Je vois le problème ! La console affiche Previous:Menu | Current:Conversation après le 8, ce qui confirme que _on_scene_changed se déclenche après le _ready() du dialogue.
#La solution : utilise await dans le _ready() du dialogue pour attendre une frame :
#gdscriptfunc _ready() -> void:
	#await get_tree().process_frame  # attend que Dialog se mette à jour
	#
	#if Dialog.previous_scene == "Menu":
		#label.text = dialog1[phrase]
	#if Dialog.previous_scene == "Conversation":
		#label.text = dialog2[phrase]
	#
	#label.visible_characters = 0
	#enter.hide()
