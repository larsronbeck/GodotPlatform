extends Node

var current_scene = null
var list = ["res://Levels/Level2.tscn","res://Levels/Level3.tscn"]
#var levels = {
#		"level1" : "res://Levels/Level1.tscn",
#		"level2" : "res://Levels/Level2.tscn",
#		"level3" : "res://Levels/Level3.tscn"
#}
var scenes = ["level1","level2","level3"]
var sceneCounter = 0
var path
var coinsTot = 0
var coinsLevels = 0
var lives = 3
var coins = 0

func _ready():
	var root = get_tree().get_root()
	current_scene = root.get_child(root.get_child_count()-1)
	print("current_scene: " + current_scene.name)
	print("update works")
	
func update_Tot_Coins(coins):
	coinsTot = coins
	#print("update_Tot_Coins in Global: " + str(coinsTot))	
	
func goto_scene():
	
	print("listsize: " + str(list.size()))
	if sceneCounter != list.size():
		#print(str(levels[sceneCounter]))
		#path = levels[sceneCounter].instance()
		path = list[sceneCounter]
		print("path in goto: " + path)
		print("scenecounter: " + str(sceneCounter))
		sceneCounter += 1
		#print(levels[scenes[sceneCounter]])
		print("scenecounter: " + str(sceneCounter))
		#get_tree().call_group("Gamestate", "update_GUI", lives, coins)
		get_tree().call_group("Gamestate", "update_Level", sceneCounter)
		get_tree().change_scene(path)
		
	else:
		print("last level")
		sceneCounter = 0
		print("Win total. Starting new")
		get_tree().change_scene("res://Levels/Level1.tscn")
		
func _deferred_goto_scene(path):	# Körs inte
	print(path)
	current_scene.queue_free()
	var s = ResourceLoader.load(path)
	current_scene = s.instance()
	get_tree().get_root().add_child(current_scene)
	
func get_Tot_Coins():
	return coinsTot

	
