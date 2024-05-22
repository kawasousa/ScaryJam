extends CanvasLayer

@onready var bullets_label: Label = $MarginContainer/HBoxContainer/bullets_label
@onready var player_life_label: Label = $MarginContainer/HBoxContainer/player_life
@onready var hour_rect: ColorRect = $MarginContainer/HBoxContainer/HBoxContainer/hour_rect


func _ready():
	Global.hud_node = self
	bullets_label.text = "Balas: " + str(Global.get_bullet())
	player_life_label.text = "Saúde: " + str(Global.player_life)

func _process(_delta):
	update_satisfaction_label()
	update_hour()
	update_player_life_label()

func update_satisfaction_label() -> void:
	var satisfaction = Global.get_bullet()
	bullets_label.text = "Balas: " + str(satisfaction)

## Atualiza o tamaho do retângulo que indica as horas
func update_hour() -> void:
	var rect_size_factor = Global.hour_rect_size_factor
	hour_rect.custom_minimum_size.x = rect_size_factor * 10

func update_player_life_label() -> void:
	player_life_label.text = "Saúde: " + str(Global.player_life)
