extends Control

func verifica(element: String, linha: String, coluna: String) -> bool:
	if element != "default":
		if linha == "0":
			if coluna == "2" and element == "C":
				return true
			else:
				if coluna == "3" and element == "H":
					return true
				else: return false
	
		else:
			if linha == "1":
				if coluna == "1" and element == "LigDupla":
					getNodeGrid("1", "1", false).rotation_degrees = 45
					return true
				else:
					if coluna == "3" and element == "LigSimples":
						getNodeGrid("1", "3", false).rotation_degrees = 135
						return true
					else: return false
					
			else: 
				if linha == "2":
					if coluna == "0" and element == "C":
						return true
					else:
						if coluna == "1" and element == "H":
							return true
						else:
							if coluna == "4" and element == "C":
								return true
							else:
								if coluna == "8" and element == "O":
									return true
								else: return false
							
				else:
					if linha == "3":
						if coluna == "0" and element == "LigSimples":
							return true
						else:
							if coluna == "4" and element == "LigDupla":
								return true
							else:
								if coluna == "5" and element == "LigSimples":
									getNodeGrid("3", "5", false).rotation_degrees = 135
									return true
								else:
									if coluna == "7" and element == "LigSimples":
										getNodeGrid("3", "7", false).rotation_degrees = 45
										return true
									else:
										if coluna == "9" and element == "LigSimples":
											getNodeGrid("3", "9", false).rotation_degrees = 135
											return true
										else: return false
				
					else: 
						if linha == "4":
							if coluna == "0" and element == "C":
								return true
							else:
								if coluna == "1" and element == "H":
									return true
								else:
									if coluna == "4" and element == "C":
										return true
									else:
										if coluna == "5" and element == "H":
											return true
										else:
											if coluna == "6" and element == "C":
												return true
											else:
												if coluna == "10" and element == "H":
													return true
												else: return false
						
						else:
							if linha == "5":
								if coluna == "1" and element == "LigDupla":
									getNodeGrid("5", "1", false).rotation_degrees = 135
									return true
								else:
									if coluna == "3" and element == "LigSimples":
										getNodeGrid("5", "3", false).rotation_degrees = 45
										return true
									else:
										if coluna == "6" and element == "LigDupla":
											return true
										else: return false
										
							else:
								if linha == "6":
									if coluna == "2" and element == "C":
										return true
									else:
										if coluna == "3" and element == "H":
											return true
										else:
											if coluna == "6" and element == "O":
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
