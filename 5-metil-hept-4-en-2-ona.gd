extends Control

func verifica(element: String, linha: String, coluna: String) -> bool:
	if element != "default":
		if linha == "1":
			if coluna == "0" and element == "C":
				return true
			else:
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
							if coluna == "4" and element == "LigSimples":
								getNodeGrid("1", "4", false).rotation_degrees = 90
								return true
							else:
								if coluna == "5" and element == "C":
									return true
								else:
									if coluna == "6" and element == "H":
										getNodeGrid("1", "6", true).text = "2"
										return true
									else:
										if coluna == "7" and element == "LigSimples":
											getNodeGrid("1", "7", false).rotation_degrees = 90
											return true
										else:
											if coluna == "8" and element == "C":
												return true
											else:
												if coluna == "9" and element == "H":
													return true
												else:
													if coluna == "10" and element == "LigDupla":
														getNodeGrid("1", "10", false).rotation_degrees = 90
														return true
													else:
														if coluna == "11" and element == "C":
															return true
														else:
															if coluna == "12" and element == "LigSimples":
																getNodeGrid("1", "12", false).rotation_degrees = 90
																return true
															else:
																if coluna == "13" and element == "C":
																	return true
																else:
																	if coluna == "14" and element == "H":
																		getNodeGrid("1", "14", true).text = "2"
																		return true
																	else:
																		if coluna == "15" and element == "LigSimples":
																			getNodeGrid("1", "15", false).rotation_degrees = 90
																			return true
																		else:
																			if coluna == "16" and element == "C":
																				return true
																			else:
																				if coluna == "17" and element == "H":
																					getNodeGrid("1", "17", true).text = "3"
																					return true
																				else: return false
		else:
			if linha == "2":
				if coluna == "3" and element == "LigDupla":
					return true
				else:
					if coluna == "11" and element == "LigSimples":
						return true
					else: return false
			else:
				if linha == "3":
					if coluna == "3" and element == "O":
						return true
					else:
						if coluna == "11" and element == "C":
							return true
						else:
							if coluna == "12" and element == "H":
								getNodeGrid("3", "12", true).text = "3"
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
