extends Node

var points = 0
@onready var label: Label = %Label
var lives = 1

func decrease_health():
	lives -= 1
	print(lives)
	if lives == 0:
		get_tree().reload_current_scene()

func add_points():
	points += 1
	print(points)
	label.text = "POINTS:"+str(points)
