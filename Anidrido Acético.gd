extends Control


func verifica(element: String, linha: String, coluna: String) -> bool:
	if element != "default":
		if linha == "0":
			if coluna == "5" and element == "O":
				return true
			else: return false
		
		else:
			if linha == "1":
				if coluna == "4" and element == "LigDupla":
					getNodeGrid("1", "4", false).rotation_degrees = 45
					return true
				else: return false 
				
			else:
				if linha == "2":
					if coluna == "0" and element == "C":
						return true
					else: 
						if coluna == "1" and element == "H":
							getNodeGrid("2", "1", true).text = "3"
							return true
						else: 
							if coluna == "2" and element == "LigSimples":
								getNodeGrid("2", "2", false).rotation_degrees = 90
								return true
							else:
								if coluna == "3" and element == "C":
									return true
								else: return false

				else: 
					if linha == "3":
						if coluna == "4" and element == "LigSimples":
							getNodeGrid("3", "4", false).rotation_degrees = 135
							return true
						else: return false
						
					else:
						if linha == "4":
							if coluna == "5" and element == "O":
								return true
							else: return false
							
						else:
							if linha == "5":
								if coluna == "4" and element == "LigSimples":
									getNodeGrid("5", "4", false).rotation_degrees = 45
									return true
								else: return false
							
							else:
								if linha == "6":
									if coluna == "0" and element == "C":
										return true
									else: 
										if coluna == "1" and element == "H":
											getNodeGrid("6", "1", true).text = "3"
											return true
										else: 
											if coluna == "2" and element == "LigSimples":
												getNodeGrid("6", "2", false).rotation_degrees = 90
												return true
											else:
												if coluna == "3" and element == "C":
													return true
												else: return false
								
								else:
									if linha == "7":
										if coluna == "4" and element == "LigDupla":
											getNodeGrid("7", "4", false).rotation_degrees = 135
											return true
										else: return false

									else:
										if linha == "8":
											if coluna == "5" and element == "O":
												return true
											else: return false
										else: return false
	else: return false

func getNodeGrid(linha: String, coluna: String, text: bool) -> Node: #essa funcao
	var path = "GridContainer/%s" % linha + "/%s" %coluna
	path = path + "/Sprite"
	if text:
		path = path + "/text"
	return get_node(path)
