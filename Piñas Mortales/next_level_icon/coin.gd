extends Area2D

func _on_body_entered(body):
	if body.is_in_group("Player"):
		# print("Colisionó")
		var current_scene = get_tree().current_scene.scene_file_path
		# print(current_scene)
		var next_level_number = current_scene.to_int() + 1
		var next_level_path = "res://worlds/world" + str(next_level_number) + ".tscn"
		get_tree().change_scene_to_file(next_level_path)
		if current_scene == "res://worlds/world3.tscn":
			get_tree().quit()
