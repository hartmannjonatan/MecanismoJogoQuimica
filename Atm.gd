extends Control

var elementGlobal = "default"

func _ready():
	pass;

func _process(delta):
	get_node("/root/GlobalVar").element = elementGlobal

func _on_C_pressed():
	elementGlobal = "C"


func _on_H_pressed():
	elementGlobal = "H"


func _on_O_pressed():
	elementGlobal = "O"


func _on_N_pressed():
	elementGlobal = "N"

func _on_Cl_pressed():
	elementGlobal = "Cl"


func _on_Br_pressed():
	elementGlobal = "Br"


func _on_LigSimp_pressed():
	elementGlobal = "LigSimples"


func _on_LigDupl_pressed():
	elementGlobal = "LigDupla"


func _on_LigTrip_pressed():
	elementGlobal = "LigTripla"
