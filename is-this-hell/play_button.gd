extends Button



func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://MainScene.tscn")
	Global.appCount = 0
