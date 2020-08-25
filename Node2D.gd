extends Node2D

onready var textbox = $CenterContainer/CatNameText
onready var imagebox = $CenterContainer/Control/TextureRect
onready var runningcat = $CenterContainer/Control/AnimatedSprite
onready var buttonaudio = $AudioStreamPlayer
var strings = ["momo", "mochi", "mori", "dorian", "moreau", "mika", "mort"]
var images = ["res://momo.jpg", "res://icon.png", "res://mori.jpg", "res://icon.png", "res://moreau.jpg", "res://mika.jpg", "res://mort.jpg"]

func _ready():
	randomize()

func _on_Button_pressed():
	var choice = randi()%strings.size()
	textbox.text = strings[choice]
	imagebox.texture = load(images[choice])
	buttonaudio.play()
	if runningcat != null:
		runningcat.queue_free()
	
