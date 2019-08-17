extends Control

var current_scene = null

func _process(delta):
	gotoNextlevelOnButtonPressed()
	

func gotoNextlevelOnButtonPressed():
	if Input.is_action_pressed("button_pressed"):
		print("Start Next Level!")
		_on_StartButton_pressed()

func _on_StartButton_pressed():	
	get_tree().change_scene("res://Levels/Level1.tscn")
