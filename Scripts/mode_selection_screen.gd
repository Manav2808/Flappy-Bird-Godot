extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_classic_pressed():
	Global.mode = "Classic"
	Global.move_direction = 1
	Global.inverse_rotation_direction = 1
	Global.gravity_direction = 1
	Global.gravity_strength = 1
	Global.obstacles_speed = 300
	get_tree().change_scene_to_file("res://Scenes/game.tscn")

func _on_inverse_classic_pressed():
	Global.mode = "Inverse Classic"
	Global.move_direction = -1
	Global.inverse_rotation_direction = -1
	Global.gravity_direction = 1
	Global.gravity_strength = 1
	Global.obstacles_speed = 300
	get_tree().change_scene_to_file("res://Scenes/game.tscn")

func _on_inverse_gravity_pressed():
	Global.mode = "Inverse Gravity"
	Global.move_direction = 1
	Global.inverse_rotation_direction = 1
	Global.gravity_direction = -1
	Global.gravity_strength = 1
	Global.obstacles_speed = 300
	get_tree().change_scene_to_file("res://Scenes/game.tscn")

func _on_jupiter_pressed():
	Global.mode = "Jupiter"
	Global.move_direction = 1
	Global.inverse_rotation_direction = 1
	Global.gravity_direction = 1
	Global.gravity_strength = 0.5
	Global.obstacles_speed = 150
	get_tree().change_scene_to_file("res://Scenes/game.tscn")

func _on_debris_pressed():
	Global.move_direction = 1
	Global.inverse_rotation_direction = 1
	Global.gravity_direction = 1
	Global.gravity_strength = 1
	Global.obstacles_speed = 300
	get_tree().change_scene_to_file("res://Scenes/debris_mode.tscn")

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
