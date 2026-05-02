extends Control


func ouvrir_navigateur():
	OS.shell_open("https://godotengine.org/fr/")
	
# Aide de claude


func _on_button_pressed() -> void:
	ouvrir_navigateur()
