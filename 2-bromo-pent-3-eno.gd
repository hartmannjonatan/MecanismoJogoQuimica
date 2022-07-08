extends Control

func verifica(element: String, linha: String, coluna: String) -> bool:#esse
	if element != "default":#esse
		if linha == "1":
			if coluna == "1" and element == "H":
				getNodeGrid("1", "1", true).text = "3"
				return true
			else:
				if coluna == "2" and element == "LigSimples":
					getNodeGrid("1", "2", false).rotation_degrees = 90
					return true
				else: 
					if coluna == "3" and element == "C":
						return true
					else:
						if coluna == "4" and element == "H":
							return true
						else:
							if coluna == "5" and element == "LigSimples":
								getNodeGrid("1", "5", false).rotation_degrees = 90
								return true
							else: 
								if coluna == "6" and element == "C":
									return true
								else:
									if coluna == "7" and element == "H":
										return true
									else:
										if coluna == "9" and element == "C":
											return true
										else:
											if coluna == "10" and element == "H":
												return true
											else:
												if coluna == "11" and element == "LigSimples":
													getNodeGrid("1", "11", false).rotation_degrees = 90
													return true
												else: return false
		else:
			if linha == "2":
				if coluna == "3" and element == "LigSimples":
					return true
				else: return false
			else: return false
	else: return true

func getNodeGrid(linha: String, coluna: String, text: bool) -> Node:#essa funcao
	var path = "GridContainer/%s" % linha + "/%s" %coluna
	path = path + "/Sprite"
	if text:
		path = path + "/text"
	return get_node(path)
