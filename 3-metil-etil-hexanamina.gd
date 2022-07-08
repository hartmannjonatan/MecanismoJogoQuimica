extends Control


func verifica(element: String, linha: String, coluna: String) -> bool:
	if element != "default":
		if linha == "0":
			if coluna == "0" and element == "H":
				return true
			else: return false
			 
			
		else:
			if linha == "1":
				if coluna == "1" and element == "LigSimples":
					getNodeGrid("1", "1", false).rotation_degrees = 135
					return true
				else: return false
			
			else: 
				if linha == "2":
					if coluna == "2" and element == "N":
						return true
					else:
						if coluna == "3" and element == "LigSimples":
							getNodeGrid("2", "3", false).rotation_degrees = 90
							return true
						else: 
							if coluna == "4" and element == "C":
								return true
							else:
								if coluna == "5" and element == "H":
									getNodeGrid("2", "5", true).text = "2"
									return true
								else:
									if coluna == "6" and element == "LigSimples":
										getNodeGrid("2", "6", false).rotation_degrees = 90
										return true
									else: 
										if coluna == "7" and element == "C":
											return true
										else:
											if coluna == "8" and element == "H":
												getNodeGrid("2", "8", true).text = "2"
												return true
											else:
												if coluna == "9" and element == "LigSimples":
													getNodeGrid("2", "9", false).rotation_degrees = 90
													return true
												else: 
													if coluna == "10" and element == "C":
														return true
													else:
														if coluna == "11" and element == "H":
															return true
														else:
															if coluna == "12" and element == "LigSimples":
																getNodeGrid("2", "12", false).rotation_degrees = 90
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
																					getNodeGrid("2", "17", true).text = "2"
																					return true
																				else:
																					if coluna == "18" and element == "LigSimples":
																						getNodeGrid("2", "18", false).rotation_degrees = 90
																						return true
																					else:
																						if coluna == "19" and element == "C":
																							return true
																						else:
																							if coluna == "20" and element == "H":
																								getNodeGrid("2", "20", true).text = "3"
																								return true
																							else: return false
				
				else:
					if linha == "3":
						if coluna == "1" and element == "LigSimples":
							getNodeGrid("3", "1", false).rotation_degrees = 45
							return true
						else:
							if coluna == "10" and element == "LigSimples":
								return true
							else: return false
		
					else:
						if linha == "4":
							if coluna == "0" and element == "H":
								return true
							else:
								if coluna == "10" and element == "C":
									return true
								else:
									if coluna == "11" and element == "H":
										getNodeGrid("4", "11", true).text = "2"
										return true
									else: return false
						
						else:
							if linha == "5":
								if coluna == "10" and element == "LigSimples":
									return true
								else: return false
								
							else:
								if linha == "6":
									if coluna == "10" and element == "C":
										return true
									else:
										if coluna == "11" and element == "H":
											getNodeGrid("6", "11", true).text = "3"
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
