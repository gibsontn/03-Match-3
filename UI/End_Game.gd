extends Control

func _ready():
	$Label.text = "Fantastic!"
	$Label2.text = "You collected " + str(Global.score) + " ice cubes!"


func _on_Play_pressed():
	Global.reset()
	var _scene = get_tree().change_scene("res://UI/Menu.tscn")


func _on_Quit_pressed():
	get_tree().quit()
