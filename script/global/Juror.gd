extends Node


@export var list = [
	{
		"name":"Olympiodoros",
		"image":"res://character/Olympiodoros/Olympiodoros1.png",
		"achieved":false,"hasConvinced":false,"hasDiscovered":false,"discoveryAchievement":false,
	},
	{
		"name":"Menander",
		"image":"res://character/Menander/Menander1.png",
		"achieved":false,"hasConvinced":false,"hasDiscovered":false,"discoveryAchievement":false,
	},
	{
		"name":"Trechus",
		"image":"res://character/Trechus/Trechus1.png",
		"achieved":false,"hasConvinced":false,"hasDiscovered":false,"discoveryAchievement":false,
	},
]

func getJurorState(jurorName):
	var myJuror = list.filter(func(jurymember): return jurymember.name == jurorName)
	return myJuror[0].hasConvinced

func convinceJuror(jurorName):
	var myJuror = list.filter(func(jurymember): return jurymember.name == jurorName)
	Game.gameroot.createNotification(jurorName + " Plans To Support Socrates")
	myJuror[0].achieved = true
	myJuror[0].hasConvinced = true
	
func discoverJuror(jurorName):
	var myJuror = list.filter(func(jurymember): return jurymember.name == jurorName)
	if not myJuror[0].hasDiscovered:
		Game.gameroot.createNotification("You Have Met " + jurorName)
		myJuror[0].hasDiscovered = true
		myJuror[0].discoveryAchievement = true

func isJurorDiscovered(jurorName):
	var myJuror = list.filter(func(jurymember): return jurymember.name == jurorName)
	return myJuror[0].hasDiscovered

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
