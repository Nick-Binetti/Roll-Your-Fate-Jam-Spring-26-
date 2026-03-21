extends Button

var appCount = 0
@onready var appLabel = $"../../AppCounter"

func _on_pressed() -> void:
	appCount += 1
	print(appCount)
	appLabel.text = "Applications Submitted: %d" % appCount
