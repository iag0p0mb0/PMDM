extends Control
var main_menu : Control
var settings_menu : Control
var video_menu : Control
var audio_menu : Control

func _ready():
	main_menu = $"main menu"
	settings_menu = $"Settings menu"
	video_menu = $"Video menu"
	audio_menu = $"Audio menu"

	# Mostrar el menú principal al inicio
	show_main_menu()

func show_main_menu() -> void:
	main_menu.show()
	settings_menu.hide()
	video_menu.hide()
	audio_menu.hide()

func show_settings_menu() -> void:
	main_menu.hide()
	settings_menu.show()
	video_menu.hide()
	audio_menu.hide()

func show_video_menu() -> void:
	main_menu.hide()
	settings_menu.hide()
	video_menu.show()
	audio_menu.hide()

func show_audio_menu() -> void:
	main_menu.hide()
	settings_menu.hide()
	video_menu.hide()
	audio_menu.show()

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://worlds/world1.tscn")

func _on_settings_pressed() -> void:
	show_settings_menu()

func _on_exit_pressed() -> void:
	get_tree().quit()

func _on_video_pressed() -> void:
	show_video_menu()
	
func _on_audio_pressed() -> void:
	show_audio_menu()

func _on_back_to_main_pressed() -> void:
	show_main_menu()

func _on_full_screen_toggled(active: bool) -> void:
	# Lógica para manejar la opción de pantalla completa
	pass

func _on_borderless_toggled(active: bool) -> void:
	# Lógica para manejar la opción de sin bordes
	pass

func _on_v_sync_toggled(active: bool) -> void:
	# Lógica para manejar la opción de VSync
	pass

func _on_master_changed(value: float) -> void:
	# Lógica para manejar el cambio de volumen maestro
	pass

func _on_music_changed(value: float) -> void:
	# Lógica para manejar el cambio de volumen de la música
	pass

func _on_sound_fx_changed(value: float) -> void:
	# Lógica para manejar el cambio de volumen de los efectos de sonido
	pass
