extends CharacterBody2D

var speed := 90
const gravity := 9

func _ready():
	velocity.x = -speed
	$AnimatedSprite2D.play("run")

func _physics_process(delta):
	velocity.y += gravity
	if is_on_wall():
		if !$AnimatedSprite2D.flip_h:
			velocity.x = speed
		else:
			velocity.x = -speed
			
	if velocity.x < 0:
		$AnimatedSprite2D.flip_h = false
	elif velocity.x > 0:
		$AnimatedSprite2D.flip_h = true
	move_and_slide()

func _on_area_2d_body_entered(body):
	if body.is_in_group("Player"):
		var current_scene = get_tree().current_scene.scene_file_path
		# print(current_scene)
		var current_level = current_scene.to_int()
		var next_level_path = "res://worlds/world" + str(current_level) + ".tscn"
		get_tree().change_scene_to_file(next_level_path)
