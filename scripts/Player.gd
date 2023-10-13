extends RigidBody2D

var force = 1500;

func _ready():
	var force = 10
	print(force);

func _physics_process(delta):
	#unity physics update.
	var force = 1000;
	if Input.is_action_pressed("move_right"):
		apply_force(Vector2(force,0))
	if Input.is_action_pressed("move_left"):
		apply_force(Vector2(-force,0))
	if Input.is_action_pressed("move_up"):
		apply_force(Vector2(0,-force))
	if Input.is_action_pressed("move_down"):
		apply_force(Vector2(0,force))