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
											if coluna == "8" and element == "LigSimples":
												getNodeGrid("0", "8", false).rotation_degrees = 90
												return true
											else:
												if coluna == "9" and element == "C":
													return true
												else:
													if coluna == "10" and element == "H":
														getNodeGrid("0", "10", true).text = "2"
														return true
													else:
														if coluna == "11" and element == "LigSimples":
															getNodeGrid("0", "11", false).rotation_degrees = 90
															return true
														else:
															if coluna == "12" and element == "C":
																return true
															else:
																if coluna == "13" and element == "H":
																	return true
																else:
																	if coluna == "14" and element == "LigSimples":
																		getNodeGrid("0", "14", false).rotation_degrees = 90
																		return true
																	else:
																		if coluna == "15" and element == "C":
																			return true
																		else:
																			if coluna == "16" and element == "H":
																				return true
																			else:
																				if coluna == "17" and element == "LigDupla":
																					getNodeGrid("0", "17", false).rotation_degrees = 90
																					return true
																				else:
																					if coluna == "18" and element == "C":
																						return true
																					else:
																						if coluna == "19" and element == "H":
																							getNodeGrid("0", "19", true).text = "2"
																							return true
																						else: return false
		else:
			if linha == "1":
				if coluna == "3" and element == "LigSimples":
					return true
				else:
					if coluna == "12" and element == "LigSimples":
						return true
					else: return false
			else:
				if linha == "2":
					if coluna == "3" and element == "N":
						return true
					else:
						if coluna == "12" and element == "C":
							return true
						else:
							if coluna == "13" and element == "H":
								getNodeGrid("2", "13", true).text = "2"
								return true
							else: return false
				else:
					if linha == "3":
						if coluna == "2" and element == "LigDupla":
							getNodeGrid("3", "2", false).rotation_degrees = 45
							return true
						else:
							if coluna == "4" and element == "LigSimples":
								getNodeGrid("3", "4", false).rotation_degrees = 135
								return true
							else:
								if coluna == "12" and element == "LigSimples":
									return true
								else: return false
					else:
						if linha == "4":
							if coluna == "1" and element == "O":
								return true
							else:
								if coluna == "5" and element =="O":
									return true
								else:
									if coluna == "12" and element == "C":
										return true
									else:
										if coluna == "13" and element == "H":
											getNodeGrid("4", "13", true).text = "3"
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
