extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

@onready var DieSound = get_node("DieSound")

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	var rotate_back_tween = create_tween()
	var rotate_forward_tween = create_tween()

	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta * Global.gravity_direction

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY * Global.gravity_direction * Global.gravity_strength
		$AnimatedSprite2D.play("Fly Up")
		$FlapSound.play()
		rotate_back_tween.tween_property(self, "rotation", -5 * Global.inverse_rotation_direction, 0.25)
	else:
		rotate_forward_tween.tween_property(self, "rotation", 0.25 * Global.inverse_rotation_direction, 0.5)

	move_and_slide()

func _on_area_2d_area_entered(area):
	if area.name == "BirdDetectionArea":
		Global.score += 1
		$ScoredSound.play()
	elif area.name == "BirdKillArea" or area.name == "BirdKillArea2" or area.name == "BaseArea":
		Global.mode = ""
		get_tree().change_scene_to_file("res://Scenes/game_over.tscn")
