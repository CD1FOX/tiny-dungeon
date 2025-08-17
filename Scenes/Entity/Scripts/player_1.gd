extends CharacterBody2D

var tile_move = 16.0

func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_left"):
		position.x -= tile_move
	elif Input.is_action_just_pressed("ui_right"):
		position.x += tile_move
	elif Input.is_action_just_pressed("ui_up"):
		position.y -= tile_move
	elif Input.is_action_just_pressed("ui_down"):
		position.y += tile_move
