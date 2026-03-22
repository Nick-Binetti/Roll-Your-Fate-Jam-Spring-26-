extends Button

@onready var acceptance = $"../../Job-offer-email"
@onready var rejection = $"../../Job-rejection-email-visual"
@onready var jobApp = $"../../Employment-job-application"

@onready var rejectionName = $"../../Job-rejection-email-visual/NameLabel"
@onready var rejectionName2 = $"../../Job-rejection-email-visual/NameLabel2"
@onready var acceptName = $"../../Job-offer-email/NameLabel"

@onready var rejectOkButton = $"../../Job-rejection-email-visual/AcceptButton"
@onready var quips = ["bruh","ok","This IS Hell", "I guess I'll live forever anyways","Didn't want it anyways", "whelp"]


func _on_pressed() -> void:
	var randomChance = randi_range(1,100)
	var randomQuip = randi_range(0, quips.size()-1)
	Global.appCount += 1
	print(Global.appCount)
	#delete job app
	jobApp.queue_free()
	#random logic 1%
	if randomChance <= 5:
		print(randomChance)
		acceptName.text = Global.playerName
		acceptance.show()
	else:
		print(randomChance)
		rejectionName.text = Global.playerName
		rejectionName2.text = Global.playerName
		rejectOkButton.text = quips[randomQuip]

		rejection.show()
	
