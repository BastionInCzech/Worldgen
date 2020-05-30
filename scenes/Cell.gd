extends Node2D

var type : String
class_name Cell

func refresh_visual():
	$forest.visible = false
	$water.visible = false
	$hill.visible = false
	$meadow.visible = false
	if type == "hill":
		$hill.visible = true
	elif type == "water":
		$water.visible = true
	elif type == "meadow":
		$meadow.visible = true
	elif type == "forest":
		$forest.visible = true

func random_type():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	
	var n = rng.randf_range(0, 3.9)
	n = int(n)
	
	if n == 0:
		type = "forest"
	elif n == 1:
		type = "meadow"
	elif n == 2:
		type = "hill"
	elif n == 3:
		type = "water"
