extends Control


func ouvrir_corbeille():
	match OS.get_name():
		"Windows":
			OS.shell_open("shell:RecycleBinFolder")
		"macOS":
			OS.shell_open("/Users/" + OS.get_environment("USER") + "/.Trash")
		"Linux":
			OS.shell_open("/home/" + OS.get_environment("USER") + "/.local/share/Trash/files")



func _on_button_pressed() -> void:
	ouvrir_corbeille()
	
	
# Aide de Claude
