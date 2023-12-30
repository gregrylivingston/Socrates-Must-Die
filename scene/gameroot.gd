extends CanvasLayer

@onready var currentPlace = $PlaceParent/Place
var map = null

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



func _on_option_menu_b_pressed():
	var newScene = load("res://scene/ui/menu_options.tscn").instantiate()
	newScene.ingameSetup()
	add_child(newScene)


func _on_map_button_2_pressed():
	var newScene = load("res://scene/ui/Map.tscn").instantiate()
	add_child(newScene)
	map = newScene
