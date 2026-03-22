extends Button

@onready var rejection = $"../"

func _on_pressed() -> void:
	#2. emit signal globally
	Global.okButton_pressed.emit()
	rejection.hide()
	
