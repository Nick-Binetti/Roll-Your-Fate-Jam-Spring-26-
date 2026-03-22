extends Sprite2D

@onready var submitButton = $SubmitButton

@onready var NameText = $NameTextBox
@onready var PayText = $PayTextBox
@onready var HsText = $HsTextBox
@onready var CollegeText = $CollegeTextBox

@onready var anim_player = $AnimationPlayer


func _on_name_text_box_text_changed(_new_text: String) -> void:
	if NameText.text != "" and PayText.text != "" and HsText.text != "" and CollegeText.text != "":
		submitButton.disabled = false


func _on_pay_text_box_text_changed(_new_text: String) -> void:
	if NameText.text != "" and PayText.text != "" and HsText.text != "" and CollegeText.text != "":
		submitButton.disabled = false


func _on_hs_text_box_text_changed(_new_text: String) -> void:
	if NameText.text != "" and PayText.text != "" and HsText.text != "" and CollegeText.text != "":
		submitButton.disabled = false


func _on_college_text_box_text_changed(_new_text: String) -> void:
	if NameText.text != "" and PayText.text != "" and HsText.text != "" and CollegeText.text != "":
		submitButton.disabled = false
		
#animation
func _ready() -> void:
	play_start_animation()

func play_start_animation():
	anim_player.play("start_effect")
