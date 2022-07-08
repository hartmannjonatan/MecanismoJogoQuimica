extends Control

func verifica(element: String, linha: String, coluna: String) -> bool:
	if element != "default":
		if linha == "0":
			if coluna == "2" and element == "O":
				return true
			else:
				if coluna == "3" and element == "H":
					return true
				else: return false
		else:
			if linha == "1":
				if coluna == "2" and element == "LigSimples":
					return true
				else: return false
			else:
				if linha == "2":
					if coluna =="2" and element == "C":
						return true
					else: return false
				else:
					if linha == "3":
						if coluna == "1" and element == "LigSimples":
							getNodeGrid("3", "1", false).rotation_degrees = 45
							return true
						else:
							if coluna == "3" and element == "LigDupla":
								getNodeGrid("3", "3", false).rotation_degrees = 135
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
										if coluna == "5" and element == "LigSimples":
											getNodeGrid("4", "5", false).rotation_degrees = 90
											return true
										else:
											if coluna == "6" and element == "C":
												return true
											else:
												if coluna == "7" and element == "H":
													getNodeGrid("4", "7", true).text = "3"
													return true
												else: return false
						else: 
							if linha == "5":
								if coluna == "0" and element == "LigDupla":
									return true
								else:
									if coluna == "4" and element == "LigSimples":
										return true
									else: return false
							else:
								if linha == "6":
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
									if linha == "7":
										if coluna == "1" and element == "LigSimples":
											getNodeGrid("7", "1", false).rotation_degrees = 135
											return true
										else:
											if coluna == "3" and element == "LigDupla":
												getNodeGrid("7", "3", false).rotation_degrees = 45
												return true
											else: return false
									else:
										if linha == "8":
											if coluna == "2" and element == "C":
												return true
											else:
												if coluna == "3" and element == "H":
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
