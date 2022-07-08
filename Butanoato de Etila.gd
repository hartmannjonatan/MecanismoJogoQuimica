extends Control

func verifica(element: String, linha: String, coluna: String) -> bool:
	if element != "default":
		if linha == "0":
			if coluna == "0" and element == "C":
				return true
			else:
				if coluna == "1" and element == "H":
					getNodeGrid("0", "1", true).text = "3"
					return true
				else: 
					if coluna == "2" and element == "LigSimples":
						getNodeGrid("0", "2", false).rotation_degrees = 90
						return true
					else:
						if coluna == "3" and element == "C":
							return true
						else:
							if coluna == "4" and element == "H":
								getNodeGrid("0", "4", true).text = "2"
								return true
							else: 
								if coluna == "5" and element == "LigSimples":
									getNodeGrid("0", "5", false).rotation_degrees = 90
									return true
								else:
									if coluna == "6" and element == "C":
										return true
									else:
										if coluna == "7" and element == "H":
											getNodeGrid("0", "7", true).text = "2"
											return true
										else: 
											if coluna == "11" and element == "O":
												return true
											else: return false
		
		else:
			if linha == "1":
				if coluna == "8" and element == "LigSimples":
					getNodeGrid("1", "8", false).rotation_degrees = 135
					return true
				else:
					if coluna == "10" and element == "LigSimples":
						getNodeGrid("1", "10", false).rotation_degrees = 45
						return true
					else: 
						if coluna == "12" and element == "LigSimples":
							getNodeGrid("1", "12", false).rotation_degrees = 135
							return true
						else: return false
			
			else:
				if linha == "2":
					if coluna == "9" and element == "C":
						return true
					else:
						if coluna == "13" and element == "C":
							return true
						else: 
							if coluna == "14" and element == "H":
								getNodeGrid("2", "14", true).text = "2"
								return true
							else:
								if coluna == "15" and element == "LigSimples":
									getNodeGrid("2", "15", false).rotation_degrees = 90
									return true
								else: 
									if coluna == "16" and element == "C":
										return true
									else:
										if coluna == "17" and element == "H":
											getNodeGrid("2", "17", true).text = "3"
											return true
										else: return false
				else:
					if linha == "3":
						if coluna == "9" and element == "LigDupla":
							return true
						else: return false
						
					else:
						if linha == "4":
							if coluna == "9" and element == "O":
								return true
							else: return false
						else: return false
	else: return true
	
	
func getNodeGrid(linha: String, coluna: String, text: bool) -> Node: #essa funcao
	var path = "GridContainer/%s" % linha + "/%s" %coluna
	path = path + "/Sprite"
	if text:
		path = path + "/text"
	return get_node(path)
