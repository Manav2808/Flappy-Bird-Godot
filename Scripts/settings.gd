extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.Background == "Day":
		$Background.texture = Global.bg_day
		$Background.scale = Vector2(1.4, 1.4)
	else:
		$Background.texture = Global.bg_night
		$Background.scale = Vector2(1.4, 1.4)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_day_button_pressed():
	Global.Background = "Day"
	$Background.texture = Global.bg_day
	$Background.scale = Vector2(1.4, 1.4)

func _on_night_button_pressed():
	Global.Background = "Night"
	$Background.texture = Global.bg_night
	$Background.scale = Vector2(1.4, 1.4)

func _on_blue_bird_button_pressed():
	Global.Bird = "Blue"

func _on_yellow_bird_button_pressed():
	Global.Bird = "Yellow"

func _on_yellow_bird_button_2_pressed():
	Global.Bird = "Red"

func _on_green_pipe_button_pressed():
	Global.Pipe = "Green"

func _on_red_pipe_button_pressed():
	Global.Pipe = "Red"

func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
