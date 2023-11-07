extends Node2D

var randNumGentr = RandomNumberGenerator.new()

func generate_random_Y_Position():
	var newY = randNumGentr.randi_range(-242, 112)
	var bird = get_parent().get_node("Bird")
	
	if newY - bird.position.y > 300:
		newY -= 160
	
	position.y = newY

func _process(delta):
	position.x -= Global.obstacles_speed * delta * Global.move_direction

	if Global.mode == "Inverse Classic":
		if position.x > 300:
			position.x = -263
			generate_random_Y_Position()
	else:
		if position.x < -230:
			position.x = 280
			generate_random_Y_Position()
