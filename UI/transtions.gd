extends CanvasLayer

@onready var animation_player: AnimationPlayer = $AnimationPlayer


func change_sceen(target_sceen , delay = 0.1):
	get_tree().paused = true
	await get_tree().create_timer(delay).timeout
	animation_player.play("in")
	await animation_player.animation_finished
	get_tree().change_scene_to_packed(target_sceen)
	animation_player.play("out")
	get_tree().paused = false

func die(delay = 0.001):
	get_tree().paused = true
	await get_tree().create_timer(delay).timeout
	animation_player.play("in")
	await animation_player.animation_finished
	get_tree().reload_current_scene()
	animation_player.play("out")
	get_tree().paused = false
