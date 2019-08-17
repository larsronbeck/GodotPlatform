extends Node2D

func _on_Area2D_body_entered(body):
	if (get_node("/root/Global").sceneCounter == 2):
		print("Portal: you win " + str(get_node("/root/Global").sceneCounter) )
		get_tree().call_group("Gamestate","win_game")
	else:
		print("Portal: next level " + str(get_node("/root/Global").sceneCounter) )
		get_tree().call_group("Gamestate","next_level")
		
