extends KinematicBody2D

var speed = 200
const gravedad = 100
var velocity = Vector2()
var altura = Vector2()

func get_input():
	altura = Vector2()
	velocity = Vector2()
	if Input.is_action_pressed('right'):
		velocity.x +=1
	if Input.is_action_pressed('left'):
		velocity.x -=1
	altura.y += gravedad
	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	move_and_slide(velocity)
	move_and_slide(altura)