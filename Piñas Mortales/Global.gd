extends Node

var pinaple := 0 :
	set(value):
		pinaple = value
		if player != null:
			player.actualizePinapleInterface()
			$PinapleSound.play()
	#esto hace que cada vez que cojamos una piña se actualice
	get:
		return pinaple
var player

func _ready():
	$PrimarySound.play()
