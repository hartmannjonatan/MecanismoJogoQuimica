extends Control


func verifica(element: String, linha: String, coluna: String) -> bool:
	if element != "default":
		if linha == "0":
			if coluna == "6" and element == "C":
				return true
			else:
				if coluna == "7" and element == "H":
					getNodeGrid("0", "7", true).text = "2"
					return true
				else:
					if coluna == "8" and element == "LigSimples":
						getNodeGrid("0", "8", false).rotation_degrees = 90
						return true
					else: 
						if coluna == "9" and element == "C":
							return true
						else: 
							if coluna == "10" and element == "H":
								getNodeGrid("0", "10", true).text = "3"
								return true
							else: return false
		else:
			if linha == "2":
				if coluna == "5" and element == "LigSimples":
					getNodeGrid("2", "5", false).rotation_degrees = 90
					return true
				else:
					if coluna == "4" and element == "H":
						return true
					else:
						if coluna == "3" and element == "C":
							return true
						else:
							if coluna == "2" and element == "LigDupla":
								getNodeGrid("2", "2", false).rotation_degrees = 90
								return true
							else:
								if coluna == "1" and element == "H":
									getNodeGrid("2", "1", true).text = "2"
									return true
								else:
									if coluna == "0" and element == "C":
										return true
									else:
										if coluna == "7" and element == "LigSimples":
											getNodeGrid("2", "7", false).rotation_degrees = 90
											return true
										else:
											if coluna == "8" and element == "C":
												return true
											else:
												if coluna == "9" and element == "H":
													return true
												else:
													if coluna == "10" and element == "LigSimples":
														getNodeGrid("2", "10", false).rotation_degrees = 90
														return true
													else:
														if coluna == "12" and element == "H":
															getNodeGrid("2", "12", true).text = "3"
															return true
														else: return false
			else:
				if linha == "3":
					if coluna == "6" and element == "LigSimples":
						return true
					else:
						if coluna == "8" and element == "LigSimples":
							return true
						else: return false
				else:
					if linha == "4":
						if coluna == "6" and element == "C":
							return true
						else:
							if coluna == "7" and element == "H":
								getNodeGrid("4", "7", true).text = "2"
								return true
							else:
								if coluna == "8" and element == "O":
									return true
								else:
									if coluna == "9" and element == "H":
										return true
									else: return false
					else:
						if linha == "5":
							if coluna == "6" and element == "LigSimples":
								return true
							else: return false
						else:
							if linha == "6":
								if coluna == "6" and element == "C":
									return true
								else:
									if coluna == "7" and element == "H":
										getNodeGrid("6", "7", true).text = "3"
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
