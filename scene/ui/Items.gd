extends Control

var itemButtonScene = preload("res://scene/ui/item_button.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	for item in Item.list:
		if item.hasNow:
			var itemButton = itemButtonScene.instantiate()
			itemButton.ItemName = item.name
			itemButton.textureString = item.image
			$Panel/VBoxContainer/ScrollContainer/GridContainer.add_child(itemButton)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_ui_button_pressed():
	queue_free()
