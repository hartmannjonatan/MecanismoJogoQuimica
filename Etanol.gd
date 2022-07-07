extends Control


func verifica(element: String, linha: String, coluna: String) -> bool:
	if element != "default":
		if linha == "4" and coluna == "5" and element == "C":
			return true
		else:
			if linha == "4" and coluna == "6" and element == "H":
				return true
			else:
				if linha == "4" and coluna == "7" and element == "LigDupla":
					get_node("GridContainer/4/7/Sprite").rotation_degrees = 90
					return true
				else:
					if linha == "4" and coluna == "4" and element == "LigSimples":
						return true
					else:
						if linha == "4" and coluna == "3" and element == "C":
							return true
						else:
							if linha == "4" and coluna == "2" and element == "H":
								return true
							else:
								if linha == "4" and coluna == "8" and element == "O":
									return true
								else:
									if linha == "4" and coluna == "9" and element == "H":
										return true
									else: 
										return false
	else: return true
