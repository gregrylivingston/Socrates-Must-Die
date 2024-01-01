extends Node


@export var list = [
	{
		"name":"Trechus",
		"image":"res://character/Trechus/Trechus1.png",
		"achieved":false,"hasConvinced":false,"hasDiscovered":false,"discoveryAchievement":false,
	},
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
	
]

func getJurorState(jurorName):
	var myJuror = list.filter(func(jurymember): return jurymember.name == jurorName)
	return myJuror[0].hasConvinced

func convinceJuror(jurorName):
	var myJuror = list.filter(func(jurymember): return jurymember.name == jurorName)
	myJuror[0].achieved = true
	myJuror[0].hasConvinced = true
	
func discoverJuror(jurorName):
	var myJuror = list.filter(func(jurymember): return jurymember.name == jurorName)
	myJuror[0].hasDiscovered = true
	myJuror[0].discoveryAchievement = true

var temples = ["zeus","parthanon","Haphaestus","Anakeion"]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
