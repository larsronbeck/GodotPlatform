extends Control

func _on_RestartButton_pressed():
	print("Game over: Starting new.")
	get_tree().change_scene("res://Levels/Level1.tscn")
	