extends Node2D

var lives = 3
var coins = 0
var level = 1
var target_number_of_coins = 10
#export onready var (string) $GUI/Control/TextureRect2/HBoxContainer/LevelText.text

func _ready():
	add_to_group("Gamestate")
	update_GUI()

func hurt():
	lives -= 1	
	$Player.hurt()
	update_GUI()
	if lives < 0:
		end_game()
		
func update_GUI():
	get_tree().call_group("GUI", "update_GUI", lives, coins)
	
func update_Tot_Coins():
	get_node("/root/Global").update_Tot_Coins(coins)
		
func coin_up():
	coins += 1
	update_Tot_Coins()
	update_GUI()	
	
	var multiple_of_coins = (coins % target_number_of_coins) == 0
	if multiple_of_coins:
		life_up()
		
func life_up():
	lives += 1
	update_GUI()

func end_game():
	get_tree().change_scene("res://Levels/GameOver.tscn")
	
func win_game():
	get_tree().change_scene("res://Levels/Victory.tscn")
	
func next_level():
	get_tree().change_scene("res://Levels/NextLevel.tscn")
	

	