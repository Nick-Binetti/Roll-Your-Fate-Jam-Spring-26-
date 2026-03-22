extends Node2D

@onready var appLabel = $AppCounter

func _ready():
	#3. connect signal from global to main scene
	Global.okButton_pressed.connect(_on_okbutton_pressed)

func _process(_delta: float):
	appLabel.text = "Applications Submitted: %d" % Global.appCount

func _on_okbutton_pressed() -> void:
	#instantiate job app scene
	const jobApp = preload("res://employment_job_application.tscn")
	var new_inst = jobApp.instantiate()
	new_inst.transform.origin = Vector2(-360,535)
	new_inst.name = "Employment-job-application"
	add_child(new_inst)

	#animate new jbb app sliding over 
	new_inst.get_node("AnimationPlayer").play("start_effect")
	
