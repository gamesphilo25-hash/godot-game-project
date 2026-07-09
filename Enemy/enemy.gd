extends RigidBody2D

@onready var game_manger: Node = %"game manger"



func _on_area_2d_body_entered(body: Node2D) -> void:
	
	if body.is_in_group("plyer"):
		var y_delta = position.y - body.position.y
		print(y_delta)
		if y_delta > 48:
			print("destroy enemy")
			queue_free()
		else:
			print("decrease plyer health")
			game_manger.decrease_health()
