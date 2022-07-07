extends TextureButton

var C = preload("res://sprites-elements/C.png")
var H = preload("res://sprites-elements/H.png")
var O = preload("res://sprites-elements/O.png")
var N = preload("res://sprites-elements/N.png")
var Cl = preload("res://sprites-elements/Cl.png")
var Br = preload("res://sprites-elements/Br.png")
var LigSimples = preload("res://sprites-elements/lig-simples.png")
var LigDupla = preload("res://sprites-elements/lig-dupla.png")
var LigTripla = preload("res://sprites-elements/lig-tripla.png")
var default = preload("res://sprites-elements/frameClear.png")
var erro = preload("res://sprites-elements/frame-erro.png")

onready var control = $".".get_parent().get_parent().get_parent()

func _ready():
	#$Sprite.texture = default
	pass;

func _on_0_mouse_entered():
	self.get_child(0).visible = true
	
func _on_0_mouse_exited():
	if self.get_child(0).animation == "default":
		self.get_child(0).visible = false
	else: self.get_child(0).visible = true


func _on_0_pressed():
	var texture = get_node("/root/GlobalVar").element
	var linha = self.get_parent().name
	var coluna = self.name
	var verif = control.verifica(texture, linha, coluna)
	
	if verif:
		match texture:
			"C":
				$Sprite.texture = C
			"H":
				$Sprite.texture = H
			"O":
				$Sprite.texture = O
			"N":
				$Sprite.texture = N
			"Cl":
				$Sprite.texture = Cl
			"Br":
				$Sprite.texture = Br
			"LigSimples":
				$Sprite.texture = LigSimples
			"LigDupla":
				$Sprite.texture = LigDupla
			"LigTripla":
				$Sprite.texture = LigTripla
			default:
				$Sprite.texture = default
	else: $Sprite.texture = erro
		
	
