extends Node2D

func _ready():
	$DieSound.play()

	if Global.Background == "Day":
		$Background.texture = Global.bg_day
		$Background.scale = Vector2(1.4, 1.4)
	else:
		$Background.texture = Global.bg_night
		$Background.scale = Vector2(1.4, 1.4)

	$FinalScore.text = "Your Score: " + str(Global.score)
	Global.score = 0

func _on_play_again_pressed():
	get_tree().change_scene_to_file("res://Scenes/mode_selection_screen.tscn")

func _on_settings_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/settings.tscn")

func _on_exit_pressed():
	get_tree().quit()
