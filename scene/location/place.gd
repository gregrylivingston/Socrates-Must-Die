extends TextureRect

@export var placeName: String

# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/Panel/Label.text = placeName


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
