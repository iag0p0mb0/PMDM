extends CharacterBody2D
class_name Player

var speed := 120
var direction := 0.0
var jump := 250
const gravity := 9
@onready var animation := $AnimationPlayer
@onready var sprite := $Sprite2D
@onready var pinaplesLabel := $PlayerGUI/HBoxContainer/PinapleLabel2

func _ready():
	Global.player= self

func _physics_process(delta):
	direction = Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * speed #se pone ek .x para especificar que el personaje solo se va a poder mover en el eje x

	if direction != 0:
		animation.play("walk")
	else:
		animation.play("idle")
		
	sprite.flip_h = direction < 0

	if is_on_floor() and Input.is_action_just_pressed("ui_accept"):#este if lo que hace es comprobar que el personaje está en el suelo y que se presiona la tecla correspondiente para poder saltar
		velocity.y -= jump
		$AudioStreamPlayer.play()
	if !is_on_floor():
		velocity.y += gravity	

	move_and_slide()

func actualizePinapleInterface():
	pinaplesLabel.text = str(Global.pinaple)
