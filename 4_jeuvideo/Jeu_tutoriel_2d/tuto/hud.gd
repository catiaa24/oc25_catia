extends CanvasLayer

signal start_game


func _show_message(text):
	$Message.text = text
	$Message.show()
	$MessageTimer.start()
	
func _show_game_over():
	_show_message("Game Over")
	
	await $MessageTimer.timeout
	
	$Message.text = "Dodge the Creeps!"
	$Message.show()
	
	await get_tree().create_timer(1.0).timeout
	$StartButton.show()
	
func _update_score(score):
	$ScoreLabel.text = str(score)

func _on_start_button_pressed() -> void:
	$StartButton.hide()
	start_game.emit()


func _on_message_timer_timeout() -> void:
	$Message.hide()
