/*----------------------------------------------------------------

	
		int map[][] = { {-1,-1,-1,-1,-1,-1,-1},
						{-1, 0, 0, 0, 0, 0,-1},
						{-1, 0,-1,-1,-1,-1,-1},
						{-1, 0,-1, 0,-1, 0,-1},
						{-1, 0,-1, 0,-1, 0,-1},
						{-1, 0, 0, 0,-1, 0,-1},
						{-1,-1,-1, 0,-1, 0,-1},
						{-1,-1,-1, 0, 0, 0,-1},
						{-1,-1,-1,-1,-1,-1,-1},
						{-1,-1,-1,-1,-1,-1,-1},
				
		};
		
		// position pacman
		int posPacX = 5;
		int posPacY = 1;
		
		// position clyde
		int posClyX = 3;
		int posClyY = 3;
		
		// initialisation numerotation
		map[posClyY][posClyX] = 1;
		map[posPacY][posPacX] = 0;
		
		
		String  orientation = "0";
		
		
		
					
		//pacman est au nord est
		
		if(posClyX < posPacX && posClyY > posPacY) {
			orientation = "NorthEast";
		}
		
		//pacman est au nord ouest
		
		else if( posClyX > posPacX && posClyY > posPacY ) {
			orientation = "NorthWest";
		}
		
		//pacman est au sud est
		
		else if(posClyX< posPacX && posClyY < posPacY) {
			orientation = "SouthEast";
		}
		
		
		//pacman est au sud ouest
		
		else if(posClyX > posPacX && posClyY < posPacY) {
			orientation = "SouthWest";
		}
		
		//pacman est au nord
		
		else if(posClyX == posPacX && posClyY > posPacY) {
			orientation = "North";
		}
		
		//pacman est au sud
		
		else if( posClyX == posPacX && posClyY < posPacY ) {
			orientation = "South";
		}
		
		//pacman est a l'est
		
		else if(posClyX< posPacX && posClyY == posPacY) {
			orientation = "East";
		}
		
		
		//pacman est a l'ouest
		
		else if(posClyX > posPacX && posClyY == posPacY) {
			orientation = "West";
		}
		
		else {
			orientation = "Here!";
		}
		
		
		
	
	
			
			//determination de la case a cocher .
				
		//tracage des chemins possibles 
		
		int numerotation = 2;	
		int iteration = 0;
		
		
	//for(int i = 0 ; i<5 ; i++)	{
		while(map[posPacY][posPacX] == 0){	
		
		//pacman est au nord
		
				 if(orientation == "North") {
						//mur haut 
						
						if(map[posClyY-1][posClyX] != -1 && map[posClyY-1][posClyX] == 0 ){
							posClyY-- ;
						}
						
						//mur droite 
						else if(map[posClyY][posClyX+1] != -1 && map[posClyY][posClyX+1] == 0) {
							posClyX++ ;
						}
						
						//mur left
						else if(map[posClyY][posClyX-1] != -1  && map[posClyY][posClyX-1] == 0) {
							posClyX-- ;		
						}
						
						//mur bas 
						else if(map[posClyY+1][posClyX] != -1 && map[posClyY+1][posClyX] == 0) {
							posClyY++ ;
						}
						
						else {
							
							//--------------rollback---------------
								
								// gauche
								if(map[posClyY][posClyX-1] != -1  && map[posClyY][posClyX-1] != 0 && map[posClyY][posClyX-1] < map[posClyY][posClyX]) {
									posClyX--;
								}
								
								// droite
								else if(map[posClyY][posClyX+1] != -1  && map[posClyY][posClyX+1] != 0 && map[posClyY][posClyX+1] < map[posClyY][posClyX]) {
									posClyX++;
								}
								
								// haut
								else if(map[posClyY-1][posClyX] != -1  && map[posClyY-1][posClyX] != 0 && map[posClyY-1][posClyX] < map[posClyY][posClyX]) {
									posClyY--;
								}
								
								// bas
								else if(map[posClyY+1][posClyX] != -1  && map[posClyY+1][posClyX] != 0 && map[posClyY+1][posClyX] < map[posClyY][posClyX]) {
									posClyY++;
								}
								
								numerotation--;
							}
						
						
				}	
				 
		
		//pacman est au sud
					
			else if(orientation == "South" ) {
				
				
				//mur bas 
				if(map[posClyY+1][posClyX] != -1 && map[posClyY+1][posClyX] == 0) {
					posClyY++ ;
				}
				
				
				//mur droite 
				else if(map[posClyY][posClyX+1] != -1 && map[posClyY][posClyX+1] == 0) {
					posClyX++ ;
				}
				
				//mur left
				else if(map[posClyY][posClyX-1] != -1  && map[posClyY][posClyX-1] == 0) {
					posClyX-- ;		
				}
				 
				//mur haut 
					
				else if(map[posClyY-1][posClyX] != -1 && map[posClyY-1][posClyX] == 0 ){
					posClyY-- ;
				}
				
				else {
					
					//--------------rollback---------------
						
						// gauche
						if(map[posClyY][posClyX-1] != -1  && map[posClyY][posClyX-1] != 0 && map[posClyY][posClyX-1] < map[posClyY][posClyX]) {
							posClyX--;
						}
						
						// droite
						else if(map[posClyY][posClyX+1] != -1  && map[posClyY][posClyX+1] != 0 && map[posClyY][posClyX+1] < map[posClyY][posClyX]) {
							posClyX++;
						}
						
						// haut
						else if(map[posClyY-1][posClyX] != -1  && map[posClyY-1][posClyX] != 0 && map[posClyY-1][posClyX] < map[posClyY][posClyX]) {
							posClyY--;
						}
						
						// bas
						else if(map[posClyY+1][posClyX] != -1  && map[posClyY+1][posClyX] != 0 && map[posClyY+1][posClyX] < map[posClyY][posClyX]) {
							posClyY++;
						}
						
						numerotation--;
					}
	
			}
				 
			//pacman est a l'est
					
			else if(orientation == "East") {
				
				
				//mur droite 
				 if(map[posClyY][posClyX+1] != -1 && map[posClyY][posClyX+1] == 0) {
					posClyX++ ;
				}
				
				//mur bas 
				else if(map[posClyY+1][posClyX] != -1 && map[posClyY+1][posClyX] == 0) {
					posClyY++ ;
				}
				
				//mur haut 
				
				else if(map[posClyY-1][posClyX] != -1 && map[posClyY-1][posClyX] == 0 ){
					posClyY-- ;
				}
				
				//mur left
				else if(map[posClyY][posClyX-1] != -1  && map[posClyY][posClyX-1] == 0) {
					posClyX-- ;		
				}
				 
				else {
					
					//--------------rollback---------------
						
						// gauche
						if(map[posClyY][posClyX-1] != -1  && map[posClyY][posClyX-1] != 0 && map[posClyY][posClyX-1] < map[posClyY][posClyX]) {
							posClyX--;
						}
						
						// droite
						else if(map[posClyY][posClyX+1] != -1  && map[posClyY][posClyX+1] != 0 && map[posClyY][posClyX+1] < map[posClyY][posClyX]) {
							posClyX++;
						}
						
						// haut
						else if(map[posClyY-1][posClyX] != -1  && map[posClyY-1][posClyX] != 0 && map[posClyY-1][posClyX] < map[posClyY][posClyX]) {
							posClyY--;
						}
						
						// bas
						else if(map[posClyY+1][posClyX] != -1  && map[posClyY+1][posClyX] != 0 && map[posClyY+1][posClyX] < map[posClyY][posClyX]) {
							posClyY++;
						}
						
						numerotation--;
					}
			}
			
			
			//pacman est a l'ouest
			
			else if(orientation == "West") {
				
				//mur left
				 if(map[posClyY][posClyX-1] != -1  && map[posClyY][posClyX-1] == 0) {
					posClyX-- ;		
				}
				
				//mur haut 
				
				else if(map[posClyY-1][posClyX] != -1 && map[posClyY-1][posClyX] == 0 ){
					posClyY-- ;
				}
				 
				//mur bas 
				else if(map[posClyY+1][posClyX] != -1 && map[posClyY+1][posClyX] == 0) {
					posClyY++ ;
				}
				 
				//mur droite 
				else if(map[posClyY][posClyX+1] != -1 && map[posClyY][posClyX+1] == 0) {
					posClyX++ ;
				}
				 
				else {
					
					//--------------rollback---------------
						
						// gauche
						if(map[posClyY][posClyX-1] != -1  && map[posClyY][posClyX-1] != 0 && map[posClyY][posClyX-1] < map[posClyY][posClyX]) {
							posClyX--;
						}
						
						// droite
						else if(map[posClyY][posClyX+1] != -1  && map[posClyY][posClyX+1] != 0 && map[posClyY][posClyX+1] < map[posClyY][posClyX]) {
							posClyX++;
						}
						
						// haut
						else if(map[posClyY-1][posClyX] != -1  && map[posClyY-1][posClyX] != 0 && map[posClyY-1][posClyX] < map[posClyY][posClyX]) {
							posClyY--;
						}
						
						// bas
						else if(map[posClyY+1][posClyX] != -1  && map[posClyY+1][posClyX] != 0 && map[posClyY+1][posClyX] < map[posClyY][posClyX]) {
							posClyY++;
						}
						
						numerotation--;
					}
			}
			
		//pacman est au  nord est
			
				else if(orientation == "NorthEast") {
			
			
					//mur haut 
					
					if(map[posClyY-1][posClyX] != -1 && map[posClyY-1][posClyX] == 0 ){
						posClyY-- ;
					}
					
					//mur droite 
					else if(map[posClyY][posClyX+1] != -1 && map[posClyY][posClyX+1] == 0) {
						posClyX++ ;
					}
					
					//mur bas 
					else if(map[posClyY+1][posClyX] != -1 && map[posClyY+1][posClyX] == 0) {
						posClyY++ ;
					}
					
					//mur left
					else if(map[posClyY][posClyX-1] != -1  && map[posClyY][posClyX-1] == 0) {
						posClyX-- ;		
					}
					
					else {
						
					//--------------rollback---------------
						
						// gauche
						if(map[posClyY][posClyX-1] != -1  && map[posClyY][posClyX-1] != 0 && map[posClyY][posClyX-1] < map[posClyY][posClyX]) {
							posClyX--;
						}
						
						// droite
						else if(map[posClyY][posClyX+1] != -1  && map[posClyY][posClyX+1] != 0 && map[posClyY][posClyX+1] < map[posClyY][posClyX]) {
							posClyX++;
						}
						
						// haut
						else if(map[posClyY-1][posClyX] != -1  && map[posClyY-1][posClyX] != 0 && map[posClyY-1][posClyX] < map[posClyY][posClyX]) {
							posClyY--;
						}
						
						// bas
						else if(map[posClyY+1][posClyX] != -1  && map[posClyY+1][posClyX] != 0 && map[posClyY+1][posClyX] < map[posClyY][posClyX]) {
							posClyY++;
						}
						
						numerotation--;
					}
			}
				
		//pacman est au nord ouest
			
			else if(orientation == "NorthWest") {
				
				//mur haut 
				if(map[posClyY-1][posClyX] != -1 && map[posClyY-1][posClyX] == 0 ){
					posClyY-- ;
				}
				
				//mur left
				else if(map[posClyY][posClyX-1] != -1  && map[posClyY][posClyX-1] == 0) {
					posClyX-- ;		
				}
				
				//mur bas 
				else if(map[posClyY+1][posClyX] != -1 && map[posClyY+1][posClyX] == 0) {
					posClyY++ ;
				}
				
				//mur droite 
				else if(map[posClyY][posClyX+1] != -1 && map[posClyY][posClyX+1] == 0) {
					posClyX++ ;
				}
				
				else {
					
					//--------------rollback---------------
						
						// gauche
						if(map[posClyY][posClyX-1] != -1  && map[posClyY][posClyX-1] != 0 && map[posClyY][posClyX-1] < map[posClyY][posClyX]) {
							posClyX--;
						}
						
						// droite
						else if(map[posClyY][posClyX+1] != -1  && map[posClyY][posClyX+1] != 0 && map[posClyY][posClyX+1] < map[posClyY][posClyX]) {
							posClyX++;
						}
						
						// haut
						else if(map[posClyY-1][posClyX] != -1  && map[posClyY-1][posClyX] != 0 && map[posClyY-1][posClyX] < map[posClyY][posClyX]) {
							posClyY--;
						}
						
						// bas
						else if(map[posClyY+1][posClyX] != -1  && map[posClyY+1][posClyX] != 0 && map[posClyY+1][posClyX] < map[posClyY][posClyX]) {
							posClyY++;
						}
						
						numerotation--;
					}
			 }	
				
		//pacman est au sud ouest
				
				else  if(orientation == "SouthWest") {
					
					
					//mur bas 
					if(map[posClyY+1][posClyX] != -1 && map[posClyY+1][posClyX] == 0){
						posClyY++ ;
					}
					
					
					//mur left
					else if(map[posClyY][posClyX-1] != -1  && map[posClyY][posClyX-1] == 0){
						posClyX-- ;		
					}
					
					//mur haut 
					else if(map[posClyY-1][posClyX] != -1 && map[posClyY-1][posClyX] == 0 ){
						posClyY-- ;
					}
					
					//mur droite 
					else if(map[posClyY][posClyX+1] != -1 && map[posClyY][posClyX+1] == 0){
						posClyX++ ;
					}
					
					else {
						
						//--------------rollback---------------
							
							// gauche
							if(map[posClyY][posClyX-1] != -1  && map[posClyY][posClyX-1] != 0 && map[posClyY][posClyX-1] < map[posClyY][posClyX]) {
								posClyX--;
							}
							
							// droite
							else if(map[posClyY][posClyX+1] != -1  && map[posClyY][posClyX+1] != 0 && map[posClyY][posClyX+1] < map[posClyY][posClyX]) {
								posClyX++;
							}
							
							// haut
							else if(map[posClyY-1][posClyX] != -1  && map[posClyY-1][posClyX] != 0 && map[posClyY-1][posClyX] < map[posClyY][posClyX]) {
								posClyY--;
							}
							
							// bas
							else if(map[posClyY+1][posClyX] != -1  && map[posClyY+1][posClyX] != 0 && map[posClyY+1][posClyX] < map[posClyY][posClyX]) {
								posClyY++;
							}
							
							numerotation--;
						}
					
				}	
			 	
				
			//pacman est au sud est
			
				else if(orientation == "SouthEast") {
					
					//mur bas 
					if(map[posClyY+1][posClyX] != -1 && map[posClyY+1][posClyX] == 0) {
						posClyY++ ;
					}
					
					//mur droite 
					else if(map[posClyY][posClyX+1] != -1 && map[posClyY][posClyX+1] == 0) {
						posClyX++ ;
					}
					
					//mur haut 
					else if(map[posClyY-1][posClyX] != -1 && map[posClyY-1][posClyX] == 0 ){
						posClyY-- ;
					}
					
					//mur left
					else if(map[posClyY][posClyX-1] != -1  && map[posClyY][posClyX-1] == 0) {
						posClyX-- ;		
					}
					
					else {
						
						//--------------rollback---------------
							
							// gauche
							if(map[posClyY][posClyX-1] != -1  && map[posClyY][posClyX-1] != 0 && map[posClyY][posClyX-1] < map[posClyY][posClyX]) {
								posClyX--;
							}
							
							// droite
							else if(map[posClyY][posClyX+1] != -1  && map[posClyY][posClyX+1] != 0 && map[posClyY][posClyX+1] < map[posClyY][posClyX]) {
								posClyX++;
							}
							
							// haut
							else if(map[posClyY-1][posClyX] != -1  && map[posClyY-1][posClyX] != 0 && map[posClyY-1][posClyX] < map[posClyY][posClyX]) {
								posClyY--;
							}
							
							// bas
							else if(map[posClyY+1][posClyX] != -1  && map[posClyY+1][posClyX] != 0 && map[posClyY+1][posClyX] < map[posClyY][posClyX]) {
								posClyY++;
							}
							
							numerotation--;
						}
				}
				 
				
				 
			
					map[posClyY][posClyX] = numerotation;
					numerotation++;
					iteration++;
					

	
					for(int ligne=0 ; ligne <map.length ; ligne ++) {
						
						for(int colonne=0 ; colonne <map[0].length ; colonne ++) {

							System.out.print(map[ligne][colonne]+" |");
					}
						System.out.println(" ");
					}
				System.out.println("--------------");
				
				System.out.println(orientation);
		}
		System.out.println("iterations: "+iteration);



--------------------------PR	ATIQUE----------------------------------------------------------------------------------------------



/*	
		String  orientation = "0";
				
		//pacman est au nord est
		
		if(mapPositionXClyde < mapPositionXPacMan && mapPositionYClyde > mapPositionYPacMan) {
			orientation = "NorthEast";
		}
		
		//pacman est au nord ouest
		
		else if( mapPositionXClyde > mapPositionXPacMan && mapPositionYClyde > mapPositionYPacMan ) {
			orientation = "NorthWest";
		}
		
		//pacman est au sud est
		
		else if(mapPositionXClyde< mapPositionXPacMan && mapPositionYClyde < mapPositionYPacMan) {
			orientation = "SouthEast";
		}
		
		
		//pacman est au sud ouest
		
		else if(mapPositionXClyde > mapPositionXPacMan && mapPositionYClyde < mapPositionYPacMan) {
			orientation = "SouthWest";
		}
		
		//pacman est au nord
		
		else if(mapPositionXClyde == mapPositionXPacMan && mapPositionYClyde > mapPositionYPacMan) {
			orientation = "North";
		}
		
		//pacman est au sud
		
		else if( mapPositionXClyde == mapPositionXPacMan && mapPositionYClyde < mapPositionYPacMan ) {
			orientation = "South";
		}
		
		//pacman est a l'est
		
		else if(mapPositionXClyde< mapPositionXPacMan && mapPositionYClyde == mapPositionYPacMan) {
			orientation = "East";
		}
		
		
		//pacman est a l'ouest
		
		else if(mapPositionXClyde > mapPositionXPacMan && mapPositionYClyde == mapPositionYPacMan) {
			orientation = "West";
		}
		
		else {
			orientation = "Here!";
		}
		

			//determination de la case a cocher .
				
		//tracage des chemins possibles 
		
		int numerotation = 2;	
		int iteration = 0;
		
		//mapsGame.getComposition(ligne, colonne) < 15 &&
		
	//for(int i = 0 ; i<5 ; i++)	{
		while(map[mapPositionYPacMan][mapPositionXPacMan] == 0){	
		
		//pacman est au nord
		
				 if(orientation == "North") {
						//mur haut 
						
						if(mapsGame.getComposition(mapPositionYClyde-1, mapPositionXClyde) < 15 && map[mapPositionYClyde-1][mapPositionXClyde] == 0 ){
							mapPositionYClyde-- ;
						}
						
						//mur droite 
						else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde+1) < 15 && map[mapPositionYClyde][mapPositionXClyde+1] == 0) {
							mapPositionXClyde++ ;
						}
						
						//mur left
						else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde-1) < 15  && map[mapPositionYClyde][mapPositionXClyde-1] == 0) {
							mapPositionXClyde-- ;		
						}
						
						//mur bas 
						else if(mapsGame.getComposition(mapPositionYClyde+1, mapPositionXClyde) < 15 && map[mapPositionYClyde+1][mapPositionXClyde] == 0) {
							mapPositionYClyde++ ;
						}
						
						else {
							
							//--------------rollback---------------
								
								// gauche
								if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde-1) < 15  && map[mapPositionYClyde][mapPositionXClyde-1] != 0 && map[mapPositionYClyde][mapPositionXClyde-1] < map[mapPositionYClyde][mapPositionXClyde]) {
									mapPositionXClyde--;
								}
								
								// droite
								else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde+1) < 15  && map[mapPositionYClyde][mapPositionXClyde+1] != 0 && map[mapPositionYClyde][mapPositionXClyde+1] < map[mapPositionYClyde][mapPositionXClyde]) {
									mapPositionXClyde++;
								}
								
								// haut
								else if(mapsGame.getComposition(mapPositionYClyde-1, mapPositionXClyde) < 15  && map[mapPositionYClyde-1][mapPositionXClyde] != 0 && map[mapPositionYClyde-1][mapPositionXClyde] < map[mapPositionYClyde][mapPositionXClyde]) {
									mapPositionYClyde--;
								}
								
								// bas
								else if( mapsGame.getComposition(mapPositionYClyde+1, mapPositionXClyde) < 15  && map[mapPositionYClyde+1][mapPositionXClyde] != 0 && map[mapPositionYClyde+1][mapPositionXClyde] < map[mapPositionYClyde][mapPositionXClyde]) {
									mapPositionYClyde++;
								}
								
								numerotation--;
							}
						
						
				}	
				 
		
		//pacman est au sud
					
			else if(orientation == "South" ) {
				
				//mur bas 
				if(mapsGame.getComposition(mapPositionYClyde+1, mapPositionXClyde) < 15 && map[mapPositionYClyde+1][mapPositionXClyde] == 0) {
					mapPositionYClyde++ ;
				}
				
				
				//mur droite 
				else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde+1) < 15 && map[mapPositionYClyde][mapPositionXClyde+1] == 0) {
					mapPositionXClyde++ ;
				}
				
				//mur left
				else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde-1) < 15  && map[mapPositionYClyde][mapPositionXClyde-1] == 0) {
					mapPositionXClyde-- ;		
				}
				
				//mur haut 
				
				if(mapsGame.getComposition(mapPositionYClyde-1, mapPositionXClyde) < 15 && map[mapPositionYClyde-1][mapPositionXClyde] == 0 ){
					mapPositionYClyde-- ;
				}
				
				else {
					
					//--------------rollback---------------
						
						// gauche
						if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde-1) < 15  && map[mapPositionYClyde][mapPositionXClyde-1] != 0 && map[mapPositionYClyde][mapPositionXClyde-1] < map[mapPositionYClyde][mapPositionXClyde]) {
							mapPositionXClyde--;
						}
						
						// droite
						else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde+1) < 15  && map[mapPositionYClyde][mapPositionXClyde+1] != 0 && map[mapPositionYClyde][mapPositionXClyde+1] < map[mapPositionYClyde][mapPositionXClyde]) {
							mapPositionXClyde++;
						}
						
						// haut
						else if(mapsGame.getComposition(mapPositionYClyde-1, mapPositionXClyde) < 15  && map[mapPositionYClyde-1][mapPositionXClyde] != 0 && map[mapPositionYClyde-1][mapPositionXClyde] < map[mapPositionYClyde][mapPositionXClyde]) {
							mapPositionYClyde--;
						}
						
						// bas
						else if( mapsGame.getComposition(mapPositionYClyde+1, mapPositionXClyde) < 15  && map[mapPositionYClyde+1][mapPositionXClyde] != 0 && map[mapPositionYClyde+1][mapPositionXClyde] < map[mapPositionYClyde][mapPositionXClyde]) {
							mapPositionYClyde++;
						}
						
						numerotation--;
					}
				
	
			}
				 
			//pacman est a l'est
					
			else if(orientation == "East") {
				
				//mur droite 
				if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde+1) < 15 && map[mapPositionYClyde][mapPositionXClyde+1] == 0) {
					mapPositionXClyde++ ;
				}
				//mur left
				else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde-1) < 15  && map[mapPositionYClyde][mapPositionXClyde-1] == 0) {
					mapPositionXClyde-- ;		
				}
				
				//mur bas 
				else if(mapsGame.getComposition(mapPositionYClyde+1, mapPositionXClyde) < 15 && map[mapPositionYClyde+1][mapPositionXClyde] == 0) {
					mapPositionYClyde++ ;
				}
				
				//mur haut 
				
				else if(mapsGame.getComposition(mapPositionYClyde-1, mapPositionXClyde) < 15 && map[mapPositionYClyde-1][mapPositionXClyde] == 0 ){
					mapPositionYClyde-- ;
				}
				
				
				
				else {
					
					//--------------rollback---------------
						
						// gauche
						if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde-1) < 15  && map[mapPositionYClyde][mapPositionXClyde-1] != 0 && map[mapPositionYClyde][mapPositionXClyde-1] < map[mapPositionYClyde][mapPositionXClyde]) {
							mapPositionXClyde--;
						}
						
						// droite
						else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde+1) < 15  && map[mapPositionYClyde][mapPositionXClyde+1] != 0 && map[mapPositionYClyde][mapPositionXClyde+1] < map[mapPositionYClyde][mapPositionXClyde]) {
							mapPositionXClyde++;
						}
						
						// haut
						else if(mapsGame.getComposition(mapPositionYClyde-1, mapPositionXClyde) < 15  && map[mapPositionYClyde-1][mapPositionXClyde] != 0 && map[mapPositionYClyde-1][mapPositionXClyde] < map[mapPositionYClyde][mapPositionXClyde]) {
							mapPositionYClyde--;
						}
						
						// bas
						else if( mapsGame.getComposition(mapPositionYClyde+1, mapPositionXClyde) < 15  && map[mapPositionYClyde+1][mapPositionXClyde] != 0 && map[mapPositionYClyde+1][mapPositionXClyde] < map[mapPositionYClyde][mapPositionXClyde]) {
							mapPositionYClyde++;
						}
						
						numerotation--;
					}
				
			}
			
			
			//pacman est a l'ouest
			
			else if(orientation == "West") {
				
				//mur left
				if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde-1) < 15  && map[mapPositionYClyde][mapPositionXClyde-1] == 0) {
					mapPositionXClyde-- ;		
				}
				
				//mur bas 
				else if(mapsGame.getComposition(mapPositionYClyde+1, mapPositionXClyde) < 15 && map[mapPositionYClyde+1][mapPositionXClyde] == 0) {
					mapPositionYClyde++ ;
				}
				
				//mur haut 
				
				else if(mapsGame.getComposition(mapPositionYClyde-1, mapPositionXClyde) < 15 && map[mapPositionYClyde-1][mapPositionXClyde] == 0 ){
					mapPositionYClyde-- ;
				}
				
				//mur droite 
				else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde+1) < 15 && map[mapPositionYClyde][mapPositionXClyde+1] == 0) {
					mapPositionXClyde++ ;
				}
				
				else {
					
					//--------------rollback---------------
						
						// gauche
						if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde-1) < 15  && map[mapPositionYClyde][mapPositionXClyde-1] != 0 && map[mapPositionYClyde][mapPositionXClyde-1] < map[mapPositionYClyde][mapPositionXClyde]) {
							mapPositionXClyde--;
						}
						
						// droite
						else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde+1) < 15  && map[mapPositionYClyde][mapPositionXClyde+1] != 0 && map[mapPositionYClyde][mapPositionXClyde+1] < map[mapPositionYClyde][mapPositionXClyde]) {
							mapPositionXClyde++;
						}
						
						// haut
						else if(mapsGame.getComposition(mapPositionYClyde-1, mapPositionXClyde) < 15  && map[mapPositionYClyde-1][mapPositionXClyde] != 0 && map[mapPositionYClyde-1][mapPositionXClyde] < map[mapPositionYClyde][mapPositionXClyde]) {
							mapPositionYClyde--;
						}
						
						// bas
						else if( mapsGame.getComposition(mapPositionYClyde+1, mapPositionXClyde) < 15  && map[mapPositionYClyde+1][mapPositionXClyde] != 0 && map[mapPositionYClyde+1][mapPositionXClyde] < map[mapPositionYClyde][mapPositionXClyde]) {
							mapPositionYClyde++;
						}
						
						numerotation--;
					}
			}
			
		//pacman est au  nord est
			
				else if(orientation == "NorthEast") {
			
					//mur haut 
					
					if(mapsGame.getComposition(mapPositionYClyde-1, mapPositionXClyde) < 15 && map[mapPositionYClyde-1][mapPositionXClyde] == 0 ){
						mapPositionYClyde-- ;
					}
					
					//mur droite 
					else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde+1) < 15 && map[mapPositionYClyde][mapPositionXClyde+1] == 0) {
						mapPositionXClyde++ ;
					}
					
					//mur left
					else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde-1) < 15  && map[mapPositionYClyde][mapPositionXClyde-1] == 0) {
						mapPositionXClyde-- ;		
					}
					
					//mur bas 
					else if(mapsGame.getComposition(mapPositionYClyde+1, mapPositionXClyde) < 15 && map[mapPositionYClyde+1][mapPositionXClyde] == 0) {
						mapPositionYClyde++ ;
					}
					
					else {
						
						//--------------rollback---------------
							
							// gauche
							if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde-1) < 15  && map[mapPositionYClyde][mapPositionXClyde-1] != 0 && map[mapPositionYClyde][mapPositionXClyde-1] < map[mapPositionYClyde][mapPositionXClyde]) {
								mapPositionXClyde--;
							}
							
							// droite
							else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde+1) < 15  && map[mapPositionYClyde][mapPositionXClyde+1] != 0 && map[mapPositionYClyde][mapPositionXClyde+1] < map[mapPositionYClyde][mapPositionXClyde]) {
								mapPositionXClyde++;
							}
							
							// haut
							else if(mapsGame.getComposition(mapPositionYClyde-1, mapPositionXClyde) < 15  && map[mapPositionYClyde-1][mapPositionXClyde] != 0 && map[mapPositionYClyde-1][mapPositionXClyde] < map[mapPositionYClyde][mapPositionXClyde]) {
								mapPositionYClyde--;
							}
							
							// bas
							else if( mapsGame.getComposition(mapPositionYClyde+1, mapPositionXClyde) < 15  && map[mapPositionYClyde+1][mapPositionXClyde] != 0 && map[mapPositionYClyde+1][mapPositionXClyde] < map[mapPositionYClyde][mapPositionXClyde]) {
								mapPositionYClyde++;
							}
							
							numerotation--;
						}
					
			}
				
		//pacman est au nord ouest
			
			else if(orientation == "NorthWest") {
				
				//mur haut 
				
				if(mapsGame.getComposition(mapPositionYClyde-1, mapPositionXClyde) < 15 && map[mapPositionYClyde-1][mapPositionXClyde] == 0 ){
					mapPositionYClyde-- ;
				}
				
				//mur left
				else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde-1) < 15  && map[mapPositionYClyde][mapPositionXClyde-1] == 0) {
					mapPositionXClyde-- ;		
				}
				
				//mur droite 
				else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde+1) < 15 && map[mapPositionYClyde][mapPositionXClyde+1] == 0) {
					mapPositionXClyde++ ;
				}
				
				//mur bas 
				else if(mapsGame.getComposition(mapPositionYClyde+1, mapPositionXClyde) < 15 && map[mapPositionYClyde+1][mapPositionXClyde] == 0) {
					mapPositionYClyde++ ;
				}
				
				else {
					
					//--------------rollback---------------
						
						// gauche
						if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde-1) < 15  && map[mapPositionYClyde][mapPositionXClyde-1] != 0 && map[mapPositionYClyde][mapPositionXClyde-1] < map[mapPositionYClyde][mapPositionXClyde]) {
							mapPositionXClyde--;
						}
						
						// droite
						else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde+1) < 15  && map[mapPositionYClyde][mapPositionXClyde+1] != 0 && map[mapPositionYClyde][mapPositionXClyde+1] < map[mapPositionYClyde][mapPositionXClyde]) {
							mapPositionXClyde++;
						}
						
						// haut
						else if(mapsGame.getComposition(mapPositionYClyde-1, mapPositionXClyde) < 15  && map[mapPositionYClyde-1][mapPositionXClyde] != 0 && map[mapPositionYClyde-1][mapPositionXClyde] < map[mapPositionYClyde][mapPositionXClyde]) {
							mapPositionYClyde--;
						}
						
						// bas
						else if( mapsGame.getComposition(mapPositionYClyde+1, mapPositionXClyde) < 15  && map[mapPositionYClyde+1][mapPositionXClyde] != 0 && map[mapPositionYClyde+1][mapPositionXClyde] < map[mapPositionYClyde][mapPositionXClyde]) {
							mapPositionYClyde++;
						}
						
						numerotation--;
					}
			 }	
				
		//pacman est au sud ouest
				
				else  if(orientation == "SouthWest") {
					
					//mur bas 
					if(mapsGame.getComposition(mapPositionYClyde+1, mapPositionXClyde) < 15 && map[mapPositionYClyde+1][mapPositionXClyde] == 0) {
						mapPositionYClyde++ ;
					}

					//mur left
					else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde-1) < 15  && map[mapPositionYClyde][mapPositionXClyde-1] == 0) {
						mapPositionXClyde-- ;		
					}
					
					
					//mur haut 
					
					else if(mapsGame.getComposition(mapPositionYClyde-1, mapPositionXClyde) < 15 && map[mapPositionYClyde-1][mapPositionXClyde] == 0 ){
						mapPositionYClyde-- ;
					}
					
					//mur droite 
					else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde+1) < 15 && map[mapPositionYClyde][mapPositionXClyde+1] == 0) {
						mapPositionXClyde++ ;
					}
					
					
					else {
						
						//--------------rollback---------------
							
							// gauche
							if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde-1) < 15  && map[mapPositionYClyde][mapPositionXClyde-1] != 0 && map[mapPositionYClyde][mapPositionXClyde-1] < map[mapPositionYClyde][mapPositionXClyde]) {
								mapPositionXClyde--;
							}
							
							// droite
							else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde+1) < 15  && map[mapPositionYClyde][mapPositionXClyde+1] != 0 && map[mapPositionYClyde][mapPositionXClyde+1] < map[mapPositionYClyde][mapPositionXClyde]) {
								mapPositionXClyde++;
							}
							
							// haut
							else if(mapsGame.getComposition(mapPositionYClyde-1, mapPositionXClyde) < 15  && map[mapPositionYClyde-1][mapPositionXClyde] != 0 && map[mapPositionYClyde-1][mapPositionXClyde] < map[mapPositionYClyde][mapPositionXClyde]) {
								mapPositionYClyde--;
							}
							
							// bas
							else if( mapsGame.getComposition(mapPositionYClyde+1, mapPositionXClyde) < 15  && map[mapPositionYClyde+1][mapPositionXClyde] != 0 && map[mapPositionYClyde+1][mapPositionXClyde] < map[mapPositionYClyde][mapPositionXClyde]) {
								mapPositionYClyde++;
							}
							
							numerotation--;
						}

				}	
			 	
				
			//pacman est au sud est
			
				else if(orientation == "SouthEast") {
					
					//mur bas 
					if(mapsGame.getComposition(mapPositionYClyde+1, mapPositionXClyde) < 15 && map[mapPositionYClyde+1][mapPositionXClyde] == 0) {
						mapPositionYClyde++ ;
					}

					//mur droite 
					else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde+1) < 15 && map[mapPositionYClyde][mapPositionXClyde+1] == 0) {
						mapPositionXClyde++ ;
					}
					
					//mur haut 
					
					else if(mapsGame.getComposition(mapPositionYClyde-1, mapPositionXClyde) < 15 && map[mapPositionYClyde-1][mapPositionXClyde] == 0 ){
						mapPositionYClyde-- ;
					}
					
					//mur left
					else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde-1) < 15  && map[mapPositionYClyde][mapPositionXClyde-1] == 0) {
						mapPositionXClyde-- ;		
					}
					
					else {
						
						//--------------rollback---------------
							
							// gauche
							if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde-1) < 15  && map[mapPositionYClyde][mapPositionXClyde-1] != 0 && map[mapPositionYClyde][mapPositionXClyde-1] < map[mapPositionYClyde][mapPositionXClyde]) {
								mapPositionXClyde--;
							}
							
							// droite
							else if(mapsGame.getComposition(mapPositionYClyde, mapPositionXClyde+1) < 15  && map[mapPositionYClyde][mapPositionXClyde+1] != 0 && map[mapPositionYClyde][mapPositionXClyde+1] < map[mapPositionYClyde][mapPositionXClyde]) {
								mapPositionXClyde++;
							}
							
							// haut
							else if(mapsGame.getComposition(mapPositionYClyde-1, mapPositionXClyde) < 15  && map[mapPositionYClyde-1][mapPositionXClyde] != 0 && map[mapPositionYClyde-1][mapPositionXClyde] < map[mapPositionYClyde][mapPositionXClyde]) {
								mapPositionYClyde--;
							}
							
							// bas
							else if( mapsGame.getComposition(mapPositionYClyde+1, mapPositionXClyde) < 15  && map[mapPositionYClyde+1][mapPositionXClyde] != 0 && map[mapPositionYClyde+1][mapPositionXClyde] < map[mapPositionYClyde][mapPositionXClyde]) {
								mapPositionYClyde++;
							}
							
							numerotation--;
						}

				}

					map[mapPositionYClyde][mapPositionXClyde] = numerotation;
					numerotation++;
					iteration++;
		}
		
		for(int ligne=0 ; ligne <map.length ; ligne ++) {
			
			for(int colonne=0 ; colonne <map[0].length ; colonne ++) {

				System.out.print(map[ligne][colonne]+" |");
		}
			System.out.println(" ");
		}
	System.out.println("--------------");
	System.out.println(orientation);
	System.out.println(iteration);
	
*/
		*/