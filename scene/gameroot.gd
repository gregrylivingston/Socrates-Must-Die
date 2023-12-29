extends CanvasLayer

@onready var currentPlace = $PlaceParent/Place

# Called when the node enters the scene tree for the first time.
func _ready():
	Game.gameroot = self
	$Panel/currentPlace.text = currentPlace.placeName


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func goToPlace(placeName: String):
	currentPlace.queue_free()
	var newScene = load("res://scene/location/" + placeName + ".tscn").instantiate()
	$PlaceParent.add_child(newScene)
	currentPlace = newScene
	$Panel/currentPlace.text = currentPlace.placeName


func _on_texture_button_pressed():
	var newScene = load("res://scene/ui/menu_options.tscn").instantiate()
	newScene.ingameSetup()
	add_child(newScene)
