extends LineEdit

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("text_changed", _on_LineEdit_text_changed)
	

func _on_LineEdit_text_changed(new_text: String):
	Global.playerName = new_text
	var email_label: Label = $"../EmailText"
	email_label.text = Global.playerName + "@hellscape.com"
	print(Global.playerName)
