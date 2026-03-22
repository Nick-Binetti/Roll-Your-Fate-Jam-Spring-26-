extends Button

@onready var rejection = $"../../Job-rejection-email-visual"
@onready var jobApp = $"../../Employment-job-application"

func _on_pressed() -> void:
	Global.appCount += 1
	print(Global.appCount)
	#delete job app
	jobApp.queue_free()
	#random logic 1%
	rejection.show()
	
