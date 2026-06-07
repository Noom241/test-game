extends Node2D
#bool : verdadero o falso palanca de minecraft

#int numeros enteros

#float decimales 

#string letras tezto etc

#SPRITE2d

var frame_mochila = 0

@onready var nodo_mochila: Sprite2D = $MochilaHombre
	
func _ready():
	var button = $Button
	button.text = "Click me"
	button.pressed.connect(_button_pressed)
	
func _button_pressed():
	frame_mochila = frame_mochila + 1
	print('la cantidad de frames actuales del spriten son : ' , nodo_mochila.hframes)
	print('nos encontramos en el frame : ' , frame_mochila)
	if frame_mochila >= nodo_mochila.hframes:
		print('el frame actuual es mayor al maximo, se va  a reiniciar')	
		frame_mochila = 0
	nodo_mochila.frame = frame_mochila
