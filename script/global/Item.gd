extends Node

@export var list = [
	{
		"name":"Barley",
		"image":"res://texture/icon/icons8-barley-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Brush",
		"image":"res://texture/icon/icons8-makeup-brush-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Cherry",
		"image":"res://texture/icon/icons8-cherry-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Chicken",
		"image":"res://texture/icon/icons8-chicken-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Fan",
		"image":"res://texture/icon/icons8-hand-fan-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Fish",
		"image":"res://texture/icon/icons8-fish-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Grapes",
		"image":"res://texture/icon/icons8-grapes-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Hammer",
		"image":"res://texture/icon/icons8-sledgehammer-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Honey",
		"image": "res://texture/icon/icons8-honey-100.png" ,
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Mask",
		"image":"res://texture/icon/icons8-comedy-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Map",
		"image":"res://texture/icon/icons8-map-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Milk",
		"image":"res://texture/icon/icons8-milk-bottle-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Mirror",
		"image":"res://texture/icon/icons8-mirror-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Olives",
		"image":"res://texture/icon/icons8-olive-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Pig",
		"image":"res://texture/icon/icons8-pig-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Plow",
		"image":"res://texture/icon/icons8-plow-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Rabbit",
		"image":"res://texture/icon/icons8-rabbit-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Ruler",
		"image":"res://texture/icon/icons8-measurement-tool-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Scales",
		"image":"res://texture/icon/icons8-scales-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Screw",
		"image":"res://texture/icon/icons8-screw-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Scythe",
		"image":"res://texture/icon/icons8-scythe-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Sheep",
		"image":"res://texture/icon/icons8-sheep-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Wheat",
		"image":"res://texture/icon/icons8-wheat-100.png",
		"achieved":false,
		"hasNow":false,
	},
	{
		"name":"Wine",
		"image":"res://texture/icon/icons8-wine-bottle-100.png",
		"achieved":false,
		"hasNow":false,
	},
]



func hasItem(itemName):
	var myItem = list.filter(func(item): return item.name == itemName)
	return myItem[0].hasNow

func acquireItem(itemName):
	var myItem = list.filter(func(item): return item.name == itemName)
	myItem[0].achieved = true
	myItem[0].hasNow = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
