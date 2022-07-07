extends Control

func verifica(element: String, linha: String, coluna: String) -> bool:
	if element != "default":
		if linha == "0":
			if coluna == "11" and element == "LigSimples":
				getNodeGrid("0", "11", true).rotation_degrees = 90
				return true
			else:
				if coluna == "10" and element == "H":
					getNodeGrid("0", "10", true).get_node("text").text = "2"
					return true
				else:
					if coluna == "9" and element == "C":
						return true
					else: return false
		else:
			if linha == "1":
				if coluna == "9" and element == "LigSimples":
					return true
				else: return false
			else:
				if linha == "2":
					if coluna == "9" and element == "C":
						return true
					else:
						if coluna == "10" and element == "H":
							getNodeGrid("2", "10", true).get_node("text").text = "2"
							return true
						else: return false
				else:
					if linha == "3":
						if coluna == "9" and element == "LigSimples":
							return true
						else: return false
					else:
						if linha == "4":
							if coluna == "9" and element == "C":
								return true
							else:
								if coluna == "10" and element == "H":
									return true
								else:
									if coluna == "11" and element == "LigSimples":
										getNodeGrid("4", "11", true).rotation_degrees = 90
										return true
									else:
										if coluna == "12" and element == "C":
											return true
										else:
											if coluna == "13" and element == "H":
												getNodeGrid("4", "13", true).get_node("text").text = "2"
												return true
											else: 
												if coluna == "14" and element == "LigSimples":
													getNodeGrid("4", "14", true).rotation_degrees = 90
													return true
												else:
													if coluna == "15" and element == "C":
														return true
													else: 
														if coluna == "16" and element == "H":
															getNodeGrid("4", "16", true).get_node("text").text = "3"
															return true
														else:
															if coluna == "8" and element == "LigSimples":
																getNodeGrid("4", "8", true).rotation_degrees = 90
																return true
															else: 
																if coluna == "7" and element == "H":
																	return true
																else: 
																	if coluna == "6" and element == "C":
																		return true
																	else: 
																		if coluna == "5" and element == "LigSimples":
																			getNodeGrid("4", "5", true).rotation_degrees = 90
																			return true
																		else: 
																			if coluna == "4" and element == "H":
																				return true
																			else: 
																				if coluna == "3" and element == "C":
																					return true
																				else: 
																					if coluna == "2" and element == "LigSimples":
																						getNodeGrid("4", "2", true).rotation_degrees = 90
																						return true
																					else: 
																						if coluna == "1" and element == "C":
																							return true
																						else: 
																							if coluna == "0" and element == "H":
																								getNodeGrid("4", "0", true).get_node("text").text = "3"
																								return true
																							else: return false
						else:
							if linha == "5":
								if coluna == "3" and element == "LigSimples":
									return true
								else: 
									if coluna == "6" and element == "LigSimples":
										return true
									else: return false
							else:
								if linha == "6":
									if coluna == "3" and element == "C":
										return true
									else: 
										if coluna == "4" and element == "H":
											getNodeGrid("6", "4", true).get_node("text").text = "2"
											return true
										else: 
											if coluna == "6" and element == "C":
												return true
											else: 
												if coluna == "7" and element == "H":
													getNodeGrid("6", "7", true).get_node("text").text = "3"
													return true
												else: return false
								else:
									if linha == "7":
										if coluna == "3" and element == "LigSimples":
											return true
										else: return false
									else:
										if linha == "8":
											if coluna == "3" and element == "C":
												return true
											else:
												if coluna == "4" and element == "H":
													getNodeGrid("8", "4", true).get_node("text").text = "3"
													return true
												else: return false
										else:
											return false
	else: return true

func getNodeGrid(linha: String, coluna: String, sprite: bool) -> Node:
	var text = "GridContainer/%s" % linha + "/%s" %coluna
	if sprite:
		text = text + "/Sprite"
	return get_node(text)
