extends Control

func verifica(element: String, linha: String, coluna: String) -> bool:
	if element != "default":
		if linha == "1":
			if coluna == "2" and element == "C":
				return true
			else:
				if coluna == "3" and element == "H":
					return true
				else: return false
		else:
			if linha == "2":
				if coluna == "1" and element == "LigDupla":
					getNodeGrid("2", "1", false).rotation_degrees = 45
					return true
				else:
					if coluna == "3" and element == "LigSimples":
						getNodeGrid("2", "3", false).rotation_degrees = 135
						return true
					else: return false
			else:
				if linha == "3":
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
								else: return false
				else:
					if linha == "4":
						if coluna == "0" and element == "LigSimples":
							return true
						else:
							if coluna == "4" and element == "LigDupla":
								return true
							else: return false
					else:
						if linha == "5":
							if coluna == "0" and element == "C":
								return true
							else:
								if coluna == "1" and element == "H":
									return true
								else:
									if coluna == "4" and element == "C":
										return true
									else:
										if coluna == "5" and element == "LigSimples":
											getNodeGrid("5", "5", false).rotation_degrees = 90
											return true
										else:
											if coluna == "6" and element == "C":
												return true
											else:
												if coluna == "7" and element == "H":
													getNodeGrid("5", "7", true).text = "3"
													return true
												else: return false
						else:
							if linha == "6":
								if coluna == "1" and element == "LigDupla":
									getNodeGrid("6", "1", false).rotation_degrees = 135
									return true
								else:
									if coluna == "3" and element == "LigSimples":
										getNodeGrid("6", "3", false).rotation_degrees = 45
										return true
									else: return false
							else:
								if linha == "7":
									if coluna == "2" and element == "C":
										return true
									else: return false
								else:
									if linha == "8":
										if coluna == "2" and element == "LigSimples":
											return true
										else: return false
									else:
										if linha == "9":
											if coluna == "2" and element == "Cl":
												return true
											else: return false
										else: return false
	else: return true
	
func getNodeGrid(linha: String, coluna: String, text: bool) -> Node:
	var path = "GridContainer/%s" % linha + "/%s" %coluna
	path = path + "/Sprite"
	if text:
		path = path + "/text"
	return get_node(path)
