extends Panel

@onready var label = $Down/Text
@onready var code = $Down/Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Down/Label.hide()
	$Verified.hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if code.visible_characters == code.text.length():
		code.hide()
		$Verified.show()
	
		
	

func _on_timer_timeout() -> void:
	code.visible_characters += 1


func _on_button_scan_pressed() -> void:
	code.visible_characters = 0
	code.show()
	label.hide()
	$Down/ButtonScan.hide()
	$Down/Timer.start()
