extends Node2D

func _ready():
	if Global.mode == "Inverse Classic":
		position.x = -4031598

func _process(delta):
	position.x -= Global.obstacles_speed * delta * Global.move_direction
