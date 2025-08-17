extends TileMapLayer

@onready var player_1 = $"../Player1"

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var mouse_pos = get_local_mouse_position()
		var clicked_cell = local_to_map(mouse_pos)

		# Player's current cell
		var player_cell = local_to_map(player_1.position)

		# Check if clicked cell is adjacent (distance of 1 in grid)
		if player_cell.distance_to(clicked_cell) == 1:
			var tile_id = get_cell_source_id(clicked_cell)
			if tile_id != -1:
				print("Moving to nearby tile:", clicked_cell)
				player_1.position = map_to_local(clicked_cell)
		else:
			print("That tile is too far!")
