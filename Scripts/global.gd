extends Node

var mode = "Classic" # Can be "Classic", "Inverse Classic", "Inverse Gravity", "Jupiter" or "Debris"
var move_direction = 1 # 1 means go left, -1 means go right
var inverse_rotation_direction = 1 # -1 for Inverse Classic Mode and 1 for Classic Mode
var gravity_direction = 1 # 1 means down and -1 means up
var gravity_strength = 1 # 1 means normal and 0.5 means on jupite
var obstacles_speed = 300 # 300 means normal and 150 means slower

var last_game_mode = ""

var score = 0

var bg_day = preload("res://Assets/sprites/background-day.png")
var bg_night = preload("res://Assets/sprites/background-night.png")
var pipe_green = preload("res://Assets/sprites/pipe-green.png")
var pipe_red = preload("res://Assets/sprites/pipe-red.png")
var bird_blue = preload("res://Assets/sprites/bluebird-midflap.png")
var bird_red = preload("res://Assets/sprites/redbird-midflap.png")
var bird_yellow = preload("res://Assets/sprites/yellowbird-midflap.png")

var Background = "Day" # Can be either Day or Night
var Bird = "Blue" # Can be Blue, Red or Yellow
var Pipe = "Green" # Can be either Green or Red
