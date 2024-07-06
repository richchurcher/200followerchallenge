extends CharacterBody2D
signal hit

var gravity 
var has_fallen

func _ready():
	has_fallen = true
	gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
	$AnimatedSprite2D.animation = "idle"
	$AnimatedSprite2D.play()


func _process(delta):
	if Input.is_action_pressed("up"):
		if Input.is_action_pressed("right"):
			pass
		if Input.is_action_pressed("left"):
			pass
		
	if Input.is_action_pressed("down"):
		if Input.is_action_pressed("right"):
			pass
		if Input.is_action_pressed("left"):
			pass
	

func _physics_process(delta):
	if has_fallen:
		velocity.y += 0.01 * gravity * delta
		move_and_collide(velocity)
		return
