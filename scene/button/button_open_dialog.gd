extends TextureButton

@export var timelineName: String

# Called when the node enters the scene tree for the first time.
func _ready():
	#text = timelineName
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	Dialogic.start(timelineName)
