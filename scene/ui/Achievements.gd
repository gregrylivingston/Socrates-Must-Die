extends Control

var jurorButtonScene = preload("res://scene/ui/Canvas_JuryMember.tscn")
var itemButtonScene = preload("res://scene/ui/item_button.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var juryCount = 0
	var juryConvinced = 0
	var itemCount = 0
	var itemsFound = 0
	
	for juror in Jury.list:
		var jurorButton = jurorButtonScene.instantiate()
		jurorButton.JurorName = juror.name
		jurorButton.textureString = juror.image
		juryCount += 1
		$Panel/VBoxContainer/ScrollContainer/VBoxContainer/grid.add_child(jurorButton)
		
	$Panel/VBoxContainer/HBoxContainer/jurorCount.text = "Jurors Convinced  " + str(juryConvinced) + "/" + str(juryCount)

	for item in Item.list:
		itemCount += 1
		var itemButton = itemButtonScene.instantiate()
		itemButton.ItemName = item.name
		itemButton.textureString = item.image
		if not item.achieved:itemButton.isBlackedOut = true
		else: itemsFound +=1
		$Panel/VBoxContainer/ScrollContainer/VBoxContainer/grid.add_child(itemButton)

	$Panel/VBoxContainer/HBoxContainer/itemCount.text = "Items Found  " + str(itemsFound) + "/" + str(itemCount)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_ui_button_pressed():
	queue_free()
