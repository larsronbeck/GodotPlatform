extends CanvasLayer

#export onready var levelName = $Control/TextureRect2/HBoxContainer/LevelsCount

func _ready():
	$Control/TextureRect/HBoxContainer/LifeCount.text = "3"
	
func update_GUI(lives, coins):
	$Control/TextureRect/HBoxContainer/LifeCount.text = str(lives)
	$Control/TextureRect/HBoxContainer/CoinCount.text = str(coins)
	
func update_Level(levelCount):
	$Control/TextureRect2/HBoxContainer/LevelsCount.text = str(levelCount)