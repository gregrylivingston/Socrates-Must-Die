extends Node

var gameroot

# Called when the node enters the scene tree for the first time.
func _ready():
	Dialogic.timeline_ended.connect(showInterface)
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func goToPlace(newSceneName):
	gameroot.goToPlace(newSceneName)

func hideInterface():
	gameroot.hideInterface()
	
func showInterface():
	gameroot.showInterface()

