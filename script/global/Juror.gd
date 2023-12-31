extends Node


@export var list = [
	{
		"name":"Trechus",
		"image":"res://character/Trechus/Trechus1.png",
		"achieved":false,
		"hasConvinced":false,
	},
	{
		"name":"Olympiodoros",
		"image":"res://character/Olympiodoros/Olympiodoros1.png",
		"achieved":false,
		"hasConvinced":false,
	},
	{
		"name":"Menander",
		"image":"res://character/Menander/Menander1.png",
		"achieved":false,
		"hasConvinced":false,
	},
	
]

func convinceJuror(jurorName):
	var myJuror = list.find("name" == jurorName)
	myJuror.achieved = true
	myJuror.hasConvinced = true
	

var temples = ["zeus","parthanon","Haphaestus","Anakeion"]

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
