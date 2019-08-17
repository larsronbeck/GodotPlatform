extends Control

var current_scene = null

func _on_StartButton_pressed():	
	get_tree().change_scene("res://Levels/Level1.tscn")
