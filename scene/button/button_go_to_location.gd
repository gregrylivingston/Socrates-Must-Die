extends Button

@export var newSceneName: String

# Called when the node enters the scene tree for the first time.
func _ready():
	tooltip_text = "Walk to " + newSceneName.replace("_"," ")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	get_tree().change_scene_to_file("res://scene/location/" + newSceneName + ".tscn")
