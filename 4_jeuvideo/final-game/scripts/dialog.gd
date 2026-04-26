extends Container

@onready var label = $Text
var n = ""
var phrase = 0
var question = 2


var dialog1 = [
	"Bonjour !",
	"Vous devez être le petit nouveau !",
	"Quel est votre nom ?",
	"Enchanté ! Je me présente, je suis ChatLLM",
	"Je suis votre assistant, qui va vous guider dans l'entreprise.",
	"Je dois avouer que même moi parfois je m'y perd.",
	"Votre but sera de construire des token et de faire du embedding.",
	"Pas de panique surtout ! Je vais vous aidez pas à pas."
	
]

func _texte(): # fonction pour afficher directement le dialogue si un bouton est pressé
	label.visible_characters = label.text.length()


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	label.text = dialog1[phrase]
	label.visible_characters = 0


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept"):
		
		if label.visible_characters < label.text.length():
			label.visible_characters = label.text.length()
			print(phrase)
			print(dialog1.size())
			
		elif phrase == question :
			print("nom")
			phrase+=1
			
		elif phrase+1 == dialog1.size():
			get_tree().change_scene_to_file("res://scenes/game.tscn")
		else:
			phrase+=1
			label.visible_characters = 0
			label.text = dialog1[phrase]
			print(phrase)
			print(dialog1.size())


func _on_timer_timeout() -> void:
	label.visible_characters += 1
