extends Area2D

@onready var game_manger: Node = %"game manger"



func _on_body_entered(body: Node2D) -> void:
	if (body.is_in_group("plyer")):
		_detach_and_play($AudioStreamPlayer2D)
		queue_free()
		game_manger.add_points()
	
	
	pass

func _detach_and_play(sound) -> void:
	sound.reparent(get_tree().root)
	sound.play()
	sound.finished.connect(sound.queue_free)
