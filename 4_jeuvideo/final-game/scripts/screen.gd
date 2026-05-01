extends Node


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$ScanPage.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if Input.is_action_just_pressed("escape"):
		print("return")
		get_tree().change_scene_to_file("res://scenes/game.tscn")




# Aide de CLaude
# Je voulais essayer d'expérimenter de faire en sorte que si on ouvre dans l'ordinateur 
# en question on pouvais accéder directement au fichier de l'ordinateur
# donc j'ai dmd à Claude si c'était possible et en effet oui

# Réponses
#Oui exactement ! D'après ton arbre de scène, tu as un Button dans le node Internet. Tu peux attacher un script directement sur ce Button (ou sur Internet).
#Option 1 — Script sur le node Internet
#gdscriptextends Control
#
#@onready var button = $Button  # le Button enfant de Internet
#
#func _ready():
	#button.pressed.connect(_on_button_pressed)
#
#func _on_button_pressed():
	#var chemin = ""
	#
	#match OS.get_name():
		#"Windows":
			#chemin = "C:/Users/" + OS.get_environment("USERNAME") + "/Documents"
		#"macOS":
			#chemin = "/Users/" + OS.get_environment("USER") + "/Documents"
		#"Linux":
			#chemin = "/home/" + OS.get_environment("USER") + "/Documents"
	#
	#OS.shell_open(chemin)


func _on_button_pressed() -> void:
	$ScanPage.show()


func _on_quit_pressed() -> void:
	$ScanPage.hide()
