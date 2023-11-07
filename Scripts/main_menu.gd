extends Node2D

func _ready():
	if Global.Background == "Day":
		$Background.texture = Global.bg_day
		$Background.scale = Vector2(1.4, 1.4)
	else:
		$Background.texture = Global.bg_night
		$Background.scale = Vector2(1.4, 1.4)
	
	if Global.Pipe == "Green":
		$Pipe1.texture = Global.pipe_green
		$Pipe2.texture = Global.pipe_green
		$Pipe3.texture = Global.pipe_green
		$Pipe4.texture = Global.pipe_green
	else:
		$Pipe1.texture = Global.pipe_red
		$Pipe2.texture = Global.pipe_red
		$Pipe3.texture = Global.pipe_red
		$Pipe4.texture = Global.pipe_red
	
	if Global.Bird == "Blue":
		$Bird.texture = Global.bird_blue
	elif Global.Bird == "Yellow":
		$Bird.texture = Global.bird_yellow
	else:
		$Bird.texture = Global.bird_red
	
	$Bird.scale = Vector2(2, 2)
	$Bird.global_position = Vector2(145, 311)

func _on_exit_button_pressed():
	get_tree().quit()

func _on_settings_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/settings.tscn")

func _on_play_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/mode_selection_screen.tscn")
