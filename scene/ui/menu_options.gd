extends Panel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func ingameSetup():
	$VBoxContainer/begin_button.text = "  Restart"
	$VBoxContainer/continue.disabled = false

func _on_ui_button_4_pressed():
	get_tree().quit()


func _on_begin_button_pressed():
	get_tree().change_scene_to_file("res://scene/gameroot.tscn")


func _on_settings_button_pressed():
	get_parent().add_child( load("res://scene/ui/Settings.tscn").instantiate())


func _on_continue_pressed():
	queue_free()


func _on_achievements_button_pressed():
	get_parent().add_child( load("res://scene/ui/Achievements.tscn").instantiate())
