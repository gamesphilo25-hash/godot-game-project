extends Node

@onready var main: VBoxContainer = $main
@onready var oppions: Panel = $oppions



func _ready() -> void:
	main.visible = true
	oppions.visible = false

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://levels/level1.tscn")
	pass # Replace with function body.


func _on_setteings_pressed() -> void:
	main.visible = false
	oppions.visible = true


func _on_exit_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.


func _on_back_pressed() -> void:
	_ready()
