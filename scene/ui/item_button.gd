extends VBoxContainer

var ItemName :String
var textureString : String
var isBlackedOut : bool = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text = ItemName
	$TextureRect.texture = load(textureString)
	if isBlackedOut:
		$TextureRect.modulate = Color(0.0,0.0,0.0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
