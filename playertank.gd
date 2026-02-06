extends CharacterBody2D


const SPEED = 100.0

func movement():
	var direction_movement = Input.get_vector("left", "right", "up", "down")
	velocity = direction_movement*SPEED
	if direction_movement != Vector2(0,0):
		$Icon.rotation = direction_movement.angle()-PI/2
	
	

	

func _physics_process(delta):
	movement()
	move_and_slide()
