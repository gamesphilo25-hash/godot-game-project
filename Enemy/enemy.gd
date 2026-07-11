extends RigidBody2D

@onready var game_manger: Node = %"game manger"




func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("plyer"):
		var y_delta = global_position.y - body.global_position.y
		print(y_delta)
		if y_delta > 53:
			_detach_and_play($hit)
			queue_free()
		else:
			game_manger.decrease_health()
			$hurt.play()

func _detach_and_play(sound) -> void:
	sound.reparent(get_tree().root)
	sound.play()
	sound.finished.connect(sound.queue_free)
