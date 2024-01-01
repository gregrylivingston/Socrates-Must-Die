extends Control

var jurorButtonScene = preload("res://scene/ui/Canvas_JuryMember.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	for juror in Jury.list:
		var jurorButton = jurorButtonScene.instantiate()
		jurorButton.JurorName = juror.name
		jurorButton.textureString = juror.image
		if not juror.hasConvinced:
			jurorButton.isBlackedOut = true
		if not juror.hasDiscovered:
			jurorButton.JurorName = "Unknown"
		$Panel/VBoxContainer/GridContainer.add_child(jurorButton)





# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_ui_exit_button_pressed():
	queue_free()
