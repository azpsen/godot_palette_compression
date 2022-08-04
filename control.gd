extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var checkbox = $CheckBox
onready var viewport = $ViewportContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_CheckBox_toggled(button_pressed:bool):
	viewport.material.set_shader_param("enabled", button_pressed)
