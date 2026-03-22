extends Button

@onready var acceptance = $"../../Job-offer-email"
@onready var rejection = $"../../Job-rejection-email-visual"
@onready var jobApp = $"../../Employment-job-application"

func _on_pressed() -> void:
	var randomChance = randi_range(1,100)
	Global.appCount += 1
	print(Global.appCount)
	#delete job app
	jobApp.queue_free()
	#random logic 1%
	if randomChance == 1:
		acceptance.show()
	else:
		print(randomChance)
		rejection.show()
	
