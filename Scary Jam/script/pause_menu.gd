extends CanvasLayer

@onready var resume_button = $Control/VBoxContainer/resume_button

func _ready():
	visible = false

func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		resume_button.grab_focus()
		get_tree().paused = true
		visible = true

func _on_resume_button_pressed():
	get_tree().paused = false
	visible = false

func _on_quit_to_menu_button_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://scenes/menu_inicial.tscn")
