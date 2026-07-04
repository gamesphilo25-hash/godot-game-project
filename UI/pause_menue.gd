extends Node
@onready var pause_menue: Panel = $"pause menue"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var esc = Input.is_action_just_pressed("pause")
	if esc == true:
		get_tree().paused = true
		pause_menue.show()

func _on_button_pressed() -> void:
	get_tree().paused = false
	pause_menue.hide()


func _on_button_2_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://world/stuff/main menue.tscn")
