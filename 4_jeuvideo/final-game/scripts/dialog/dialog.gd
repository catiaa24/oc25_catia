extends Container

@onready var label = $Text
@onready var enter = $Polygon2D
var n = ""
var phrase = 0
var question = 2


var dialog1 = [
	"Bonjour !",
	"Vous devez être le petit nouveau, Mob.",
	"Enchanté ! Je me présente, je suis Bob, votre assistant.",
	"C'est moi qui est chargé de vous aidez au mieux dans l'entreprise.",
	"Je dois avouer que parfois même moi je m'y perd.",
	"Votre but sera de préparer les données d'entraînement pour les LLM.",
	"Surtout pas de panique ! Je vais vous aidez."
	
]

func _texte(): # fonction pour afficher directement le dialogue si un bouton est pressé
	label.visible_characters = label.text.length()


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(Dialog.previous_scene)
	
	if Dialog.previous_scene == "Menu":
		label.text = dialog1[phrase]
	
	label.visible_characters = 0
	enter.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
		
	if Input.is_action_just_pressed("ui_accept") or Input.is_action_just_pressed("ui_right"):
		
		if label.visible_characters < label.text.length():
			label.visible_characters = label.text.length()
			print(phrase)
			print(dialog1.size())
			enter.show()
			
			
		elif phrase+1 == dialog1.size():
			get_tree().change_scene_to_file("res://scenes/game.tscn")
		else:
			phrase+=1
			label.visible_characters = 0
			label.text = dialog1[phrase]
			enter.hide()
			print(phrase)
			print(dialog1.size())
			
	if label.visible_characters == label.text.length():
		enter.show()


func _on_timer_timeout() -> void:
	label.visible_characters += 1
