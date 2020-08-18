extends Node2D

onready var textbox = $CenterContainer/CatNameText
onready var imagebox = $CenterContainer/Control/TextureRect
var strings = ["momo", "mochi", "mori", "dorian", "moreau", "mika", "mort"]
var images = ["res://momo.jpg", "res://icon.png", "res://mori.jpg", "res://icon.png", "res://moreau.jpg", "res://mika.jpg", "res://mort.jpg"]

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	var choice = randi()%strings.size()
	textbox.text = strings[choice]
	imagebox.texture = load(images[choice])
