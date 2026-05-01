extends Control

func ouvrir_gestionnaire_fichiers():
	match OS.get_name():
		"Windows":
			OS.execute("explorer.exe", [])
		"macOS":
			OS.execute("open", ["-a", "Finder"])
		"Linux":
			# Essaie les plus courants
			for app in ["nautilus", "dolphin", "thunar", "nemo"]:
				if OS.execute(app, []) == OK:
					break
# Aide de claude


func _on_button_pressed() -> void:
	ouvrir_gestionnaire_fichiers()
