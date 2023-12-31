extends VBoxContainer

var JurorName: String
var textureString: String


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = JurorName
	$TextureRect.texture = load(textureString)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
