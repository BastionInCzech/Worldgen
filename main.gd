extends Node2D


#land_scenes
var hex_scene = preload("res://scenes/Cell.tscn")


		
	# Called when the node enters the scene tree for the first time.
func _ready():

	
	var hexes = []
	for x in range(20): 
		var line = []
		for y in range(20):
			var ihex : Cell = hex_scene.instance()
			add_child(ihex)
			ihex.position = Vector2(x*(43 + 43/2), y * 75 + (x%2) * 37.5)
			ihex.random_type()
			ihex.refresh_visual()
			line.append(ihex)
		hexes.append(line)
		


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
