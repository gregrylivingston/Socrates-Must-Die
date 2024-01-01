extends TextureRect

@export var placeName: String
@export var placeDescription: String = ""
@export var placeDescriptionAudio: String = ""

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func hideInterface():
	for i in $CanvasLayer.get_children():i.visible=false
	
func showInterface():
	for i in $CanvasLayer.get_children():i.visible=true
