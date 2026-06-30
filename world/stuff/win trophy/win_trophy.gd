extends Area2D

@export var target_sceen : PackedScene

func _on_body_entered(body: Node2D) -> void:
	if (body.is_in_group("plyer")):
		get_tree().change_scene_to_packed(target_sceen)
