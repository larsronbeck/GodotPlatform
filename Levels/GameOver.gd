extends Control

func _process(delta):
	gotoNextlevelOnButtonPressed()
	
func gotoNextlevelOnButtonPressed():
	if Input.is_action_pressed("button_pressed"):
		_on_RestartButton_pressed()

func _on_RestartButton_pressed():
	print("Game over: Starting new.")
	get_tree().change_scene("res://Levels/Level1.tscn")
	