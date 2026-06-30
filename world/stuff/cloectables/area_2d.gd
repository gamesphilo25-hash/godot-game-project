extends Area2D


@onready var game_manger: Node = %"game manger"



func _on_body_entered(body: Node2D) -> void:
	if (body.is_in_group("plyer")):
		queue_free()
		game_manger.add_points()
	
	
	pass
