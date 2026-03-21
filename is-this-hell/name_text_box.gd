extends LineEdit

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("text_submitted", _on_LineEdit_text_submitted)
	

func _on_LineEdit_text_submitted(new_text: String):
	var name_text: String = new_text
	var email_label: Label = $"../EmailText"
	email_label.text = name_text + "@hellscape.com"
	print(name_text)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
