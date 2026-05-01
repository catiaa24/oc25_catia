extends Control


func ouvrir_navigateur():
	OS.shell_open("https://www.google.com")
	
# Aide de claude


func _on_button_pressed() -> void:
	ouvrir_navigateur()
