extends VBoxContainer

var JurorName: String
var textureString: String
var isBlackedOut: bool = false


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = JurorName
	$TextureRect.texture = load(textureString)
	if isBlackedOut:$TextureRect.modulate.v = 15


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
