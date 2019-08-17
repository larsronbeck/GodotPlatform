extends Control

var totCoins = 0

func _ready():
	totCoins = get_node("/root/Global").get_Tot_Coins()
	Update_Victory(totCoins)

func _on_RestartButton_pressed():
	if (get_node("/root/Global").sceneCounter == 3):
		#get_node("/root/Global").reset_Scene_Counter()
		get_tree().change_scene("res://Levels/Level1.tscn")
		
	else:
		get_node("/root/Global").goto_scene()
	
func Update_Victory(coins):
	$CenterContainer/VBoxContainer/HBoxContainer/Label2.text = str(coins)
	