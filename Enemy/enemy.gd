extends RigidBody2D




func _on_area_2d_body_entered(body: Node2D) -> void:
	
	if body.is_in_group("plyer"):
		var y_delta = position.y - body.position.y
		print(y_delta)
		if y_delta > 60:
			print("destroy enemy")
			queue_free()
		else:
			print("decrease plyer health")
			GameManger.decrease_health()
