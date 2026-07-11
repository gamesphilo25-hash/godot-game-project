extends CharacterBody2D
 


var gravity = 30
var speed = 350
var jump_force = 600


var moving = false


func _physics_process(delta: float) -> void:
	
	applay_animations()
	moving = false
	
	
	velocity.y += gravity
		
	if Input.is_action_pressed("right"):
		velocity.x = lerpf(velocity.x, speed, 0.1)
		moving = true
		$AnimatedSprite2D.flip_h = false
	elif Input.is_action_pressed("LEFT"):
		velocity.x = lerpf(velocity.x, -speed, 0.1)
		moving = true
		$AnimatedSprite2D.flip_h = true
	else:
		velocity.x = lerpf(velocity.x, 0 ,0.2)
	
	
	if is_on_floor():
		if Input.is_action_just_pressed("jump"):
			$jump.play()
			velocity.y = -jump_force
	
	move_and_slide()



func applay_animations():
	
	if is_on_floor():
		if moving == true:
			$AnimatedSprite2D.play("run")
		else:
			$AnimatedSprite2D.play("idel")
			
			
			
			pass
		
	else:
		$AnimatedSprite2D.play("Jump")
	
	
	
	
