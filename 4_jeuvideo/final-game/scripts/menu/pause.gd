extends CanvasLayer

var paused := false

func _ready():
	visible = false  # caché au départ

func _pause():
	paused = !paused
	get_tree().paused = paused
	visible = paused

func _input(event):
	if event.is_action_pressed("pause"):  # action définie dans Input Map
		_pause()

func _on_replay_pressed() -> void:
	print("bouton")
	get_tree().paused = false
	visible =  false

func _on_menu_pressed() -> void:
	get_tree().paused = false
	visible =  false
	Transition2.transition()
	await Transition2.on_transition_finished
	get_tree().change_scene_to_file("res://scenes/menu/menu.tscn")

func _on_button_pressed() -> void:
	get_tree().quit()
