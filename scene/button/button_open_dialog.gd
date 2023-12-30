extends TextureButton

@export var timelineName: String
@export var autoOpen: bool = false


# Called when the node enters the scene tree for the first time.
func _ready():
	if autoOpen: _on_pressed()
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	Dialogic.start(timelineName)
	$AudioStreamPlayer2.play()
	self.visible = false


func _on_mouse_entered():
	$AudioStreamPlayer.play()
	material.set_shader_parameter("width",10.0)


func _on_mouse_exited():
	material.set_shader_parameter("width",0.0)
