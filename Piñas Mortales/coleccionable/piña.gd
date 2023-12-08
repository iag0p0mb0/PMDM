extends Area2D



func _on_body_entered(body):
	if body is Player:
		Global.pinaple += 1
		# print(Global.pinaple)
		queue_free()
		

