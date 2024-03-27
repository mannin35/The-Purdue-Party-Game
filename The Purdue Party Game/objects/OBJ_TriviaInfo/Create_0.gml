/// @description Insert description here
// You can write your code in this editor

//Rows is categories
//Columns is Question
HasAsked[11][10];
TriviaQuestions[11][10];
TriviaAnswerCorrect[11][10];
TriviaAnswerIncorrectOne[11][10];
TriviaAnswerIncorrectTwo[11][10];
TriviaAnswerIncorrectThree[11][10];
for(i = 0; i < 11; i++){
	for(j = 0; j < 10; j++){
		HasAsked[i][j] = 0;	
	}
}
EngineeringQuestions[10] = ["What does force equal?", 
							"What is Einstein's theory of relativity?", 
							"What is Newton's first law?",
							"What does CAD stand for?", 
							"What are ohms used to measure?", 
							"Which is not a basic bridge type?", 
							"Which is not a basic bridge type?", 
							"Which of these is not a type of simple machine?", 
							"Which of these is not a type of Engineering?", 
							"What is the world’s largest engineering project?", 
							"In what month is National Engineer Week in the US?"];

SportQuestions[10] = ["How many players are on a baseball team", 
					  "How many miles is a marathon race?",
					  "What type of race is the Tour de France?",
					  "The Summer Olympics are held every ___ years?",
					  "Which sport does FIFA govern over?",
					  "The World Series is the annual championship series for which sport?",
					  "Who has won the most Olympic gold medals?",
					  "The Boston Bruins are a professional team of which sport?",
					  "Which of these is not a Formula 1 team?",
					  "How many strokes away from par is an eagle (in golf)?"];

EnglishQuestions[10] = ["Which of these is not a play by Shakespeare?",
						"Who wrote Frankenstein?",
						"Which of these is not an American author?",
						"Which of the following is not a type of figurative language?",
						"Which of these is not a type of poem?",
						"Who wrote Pride and Prejudice?",
						"What is the term for a word that is the opposite in meaning to another word?",
						"Who wrote The Iliad and The Odyssey?",
						"Adverbs are a part of speech that can be used to modify which other part(s) of speech?",
						"Which of these is a subordinating conjunction?"];
						
MathQuestions[10] = ["1","2","3","4","5","6","7", "8", "9", "10"];

ScienceQuestions[10] = ["What is the symbol for the element gold?",
						"The first-ever living creature to be cloned, Dolly, was what type of animal?",
						"What is a Geiger Counter used to measure?",
						"Which component of an atom has a negative charge?",
						"What is the pH of water?",
						"What is the most abundant element in the atmosphere?",
						"What layer of the Earth lays right under the crust?",
						"What planet in our solar system is the 2nd closest to the Sun?",
						"What is the chemical formula for hydrogen peroxide?",
						"Which of these types of electromagnetic radiation has the shortest wavelength?"];

PurdueQuestions[10] = ["How tall is the world’s largest bass drum?",
					   "How many Purdue alum have become astronauts?",
					   "How many Boilermaker Special trains have there been?",
					   "Which dorm building at Purdue has its own radio studio?",
					   "What is the oldest building on Purdue’s campus?",
					   "When was Purdue founded?",
					   "Which of these famous people is not associated with Purdue?",
					   "How many undergraduate engineering programs are offered at Purdue?",
					   "When was Purdue Pete created?",
					   "When was the Purdue Memorial Union Built?"];
			
MusicQuestions[10] = ["What musical is the song “Memory” from?",
				      "Who wrote Rent and Tick…Tick…Boom?",
					  "What musical is the song “Cell Block Tango” from?",
					  "Who is the only country artist to have a Top 20 hit on the Billboard Hot Country Songs chart for six straight decades?",
					  "Which of these is not a song by Elvis?",
					  "Which of these is not a song by Queen?",
					  "Which artist has won the most Grammys overall?",
					  "What does the word “staccato” mean in music?",
					  "Which of these instruments is not considered a brass instrument?",
					  "Which of these award shows recognizes excellence in live Broadway theater?"];

GeographyQuestions[10] = ["How many continents are there?",
						  "What is the smallest country in the world (in terms of land mass)?",
						  "How many Great Lakes are there?",
						  "In which country is Machu Picchu?",
						  "What is the tallest mountain in America?",
					      "What is the only continent with land in all four hemispheres?",
					      "What country has the most volcanoes?",
					      "How many countries are in Africa?",
					      "What is the longest river in the world?",
					      "In which ocean is the Mariana Trench?"];
						  
CSQuestions[10] = ["What does HTML stand for?",
				   "What is 7 in binary?",
				   "What does OS stand for?",
			   	   "Which is not a sorting algorithm?",
			   	   "Which is not a data structure?",
				   "Who is the father of computer science?",
				   "What is the character used in Java to indicate the end of a line of code?",
				   "According to Moore’s Law, computing power will double every ____ years.",
				   "What is it called when a function calls itself?",
				   "Who is the inventor of HolyC, a programming language used for the development of TempleOS?"];	
				   
HealthQuestions[10] = ["What is the recommended threshold for caffeine intake?",
				       "What is the most common STD for college students?",
					   "The Purdue Plague refers to what?",
					   "What is the largest organ in the human body?",
					   "What is the Universal Donor blood type?",
					   "How many teeth do adult humans have?",
			   	 	   "Which government agency is in charge of pharmaceutical regulation?",
					   "What is the largest bone in the human body?",
					   "Which of these is a bacterial infection?",
					   "What is the medical term for high blood pressure?"];			
					   
IndianaQuestions[10] = ["What are Indiana natives called?",
				        "When was Indiana founded?",
					    "What is the most dangerous city in Indiana?",
					    "What is the name of Indiana’s single national park?",
					    "How many laps are in the Indy 500?",
					    "Which cartoon character(s) is/are canonically from Indiana?",
			   	 	    "Which VP wasn’t from Indiana?",
					    "Which of these is not the name of a city in indiana?",
					    "What is the Indiana state bird?",
					    "What is the top crop in Indiana (by value)?"];	
				   
EngineeringCorrect[10] = ["F = m*a",
						  "E = mc^2",
						  "An object at rest remains at rest, or if in motion, remains in motion at a constant velocity unless acted on by an external force,",
						  "Computer Aided Design",
						  "Resistance",
						  "tension bridge",
						  "hinge",
						  "Psycho-Engineering",
						  "The International Space Station",
						  "February"];
SportCorrect[10]= ["9",
				   "26.2",
		   		   "Bicycle Race",
				   "4",
				   "Soccer",
				   "Baseball",
				   "Michael Phelps",
			 	   "Hockey",
				   "Meta",
				   "2 Strokes Below"];
				   
EnglishCorrect[10] = ["The Glass Menagerie",
					  "Mary Shelly",
					  "Jane Austin",
					  "Predicate",
					  "Novella",
					  "Jane Austin",
					  "Antonym",
					  "Homer",
					  "All listed",
					  "Because"];
			
MathCorrect[10] = ["1",
				   "2",
				   "3",
				   "4",
				   "5",
				   "6",
				   "7",
				   "8",
				   "9",
				   "10"];
				   
ScienceCorrect[10] = ["Au",
					  "Sheep",
					  "Radiation",
					  "Electron",
					  "7",
					  "Nitrogen",
					  "Mantle",
					  "Venus",
					  "H2O2",
					  "X-rays"];
					  
PurdueCorrect[10] = ["10 ft",
					 "27",
					 "7",
					 "Wiley",
					 "University Hall",
					 "1869",
					 "Johnathan Banks",
					 "18",
					 "1940",
				     "1924"];
					 
MusicCorrect[10] = ["Cats",
					"Jonathan Larson",
				    "Chicago",
				    "Dolly Parton",
				    "Help!",
				    "Life on Mars?",
				    "Beyonce",
				    "Short",
			   	    "Saxophone",
				    "Tonys"];
					
GeographyCorrect[10] = ["7",
						"Vatican City",
						"5",
						"Peru",
						"Mount Denali",
						"Africa",
						"Indonesia",
						"54",
						"The Nile",
						"The Pacific Ocean"];
						
CSCorrect[10] = ["Hypertext Markup Language",
				 "0111",
			     "Operating System",
			     "Hyper sort",
				 "Tree",
				 "Alan Turing",
				 ";",
				 "2",
				 "Recursion",
				 "Terry Davis"];
				 
HealthCorrect[10] = ["400 mg",
				     "HPV",
					 "A flu that goes around campus seemingly every fall",
					 "Skin",
					 "O-",
				     "32",
				     "FDA",
					 "Femur",
					 "Lyme disease",
			   	     "Hypertension"];
				   
IndianaCorrect[10] = ["Hoosiers",
					  "1816",
					  "Indianapolis",
			     	  "Indiana Dunes",
					  "200",
					  "Garfield",
					  "Charles Curtis",
					  "Belize",
					  "Cardinal",
					  "Corn"];
					  
EngineeringIncorrect1 = ["",
						 "",
						 "",
						 "",
						 "",
						 "",
						 "",
						 "",
						 "",
						 ""];
						 
SportsIncorrect1 = ["",
					"",
				    "",
			  	    "",
				    "",
				    "",
				    "",
				    "",
				    "",
				    ""];
					  
EnglishIncorrect1 = ["",
					 "",
					 "",
			    	 "",
					 "",
					 "",
					 "",
					 "",
					 "",
					 ""];

MathIncorrect1 = ["",
				  "",
				  "",
			   	  "",
				  "",
				  "",
			      "",
				  "",
				  "",
			   	  ""];
				  
ScienceIncorrect1 = ["",
					 "",
					 "",
			    	 "",
					 "",
					 "",
					 "",
					 "",
					 "",
					 ""];
					 
PurdueIncorrect1 = ["",
					"",
					"",
			    	"",
					"",
					"",
					"",
					"",
					"",
					""];
					
MusicIncorrect1 = ["",
				   "",
				   "",
			   	   "",
				   "",
			   	   "",
				   "",
				   "",
				   "",
				   ""];
				   
GeographyIncorrect1 = ["",
					   "",
					   "",
			    	   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   ""];
					   
CSIncorrect1 = ["",
				"",
				"",
			    "",
				"",
				"",
				"",
				"",
				"",
				""];
				
HealthIncorrect1 = ["",
					"",
					"",
			    	"",
					"",
					"",
					"",
					"",
					"",
					""];
					
IndianaIncorrect1 = ["",
					 "",
					 "",
			    	 "",
					 "",
					 "",
					 "",
					 "",
					 "",
					 ""];
					 
EngineeringIncorrect2 = ["",
						 "",
						 "",
						 "",
						 "",
						 "",
						 "",
						 "",
						 "",
						 ""];
						 
SportsIncorrect2 = ["",
					"",
				    "",
			  	    "",
				    "",
				    "",
				    "",
				    "",
				    "",
				    ""];
					  
EnglishIncorrect2 = ["",
					 "",
					 "",
			    	 "",
					 "",
					 "",
					 "",
					 "",
					 "",
					 ""];

MathIncorrect2 = ["",
				  "",
				  "",
			   	  "",
				  "",
				  "",
			      "",
				  "",
				  "",
			   	  ""];
				  
ScienceIncorrect2 = ["",
					 "",
					 "",
			    	 "",
					 "",
					 "",
					 "",
					 "",
					 "",
					 ""];
					 
PurdueIncorrect2 = ["",
					"",
					"",
			    	"",
					"",
					"",
					"",
					"",
					"",
					""];
					
MusicIncorrect2 = ["",
				   "",
				   "",
			   	   "",
				   "",
			   	   "",
				   "",
				   "",
				   "",
				   ""];
				   
GeographyIncorrect2 = ["",
					   "",
					   "",
			    	   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   ""];
					   
CSIncorrect2 = ["",
				"",
				"",
			    "",
				"",
				"",
				"",
				"",
				"",
				""];
				
HealthIncorrect2 = ["",
					"",
					"",
			    	"",
					"",
					"",
					"",
					"",
					"",
					""];
					
IndianaIncorrect2 = ["",
					 "",
					 "",
			    	 "",
					 "",
					 "",
					 "",
					 "",
					 "",
					 ""];
					 
EngineeringIncorrect3 = ["",
						 "",
						 "",
						 "",
						 "",
						 "",
						 "",
						 "",
						 "",
						 ""];
						 
SportsIncorrect3 = ["",
					"",
				    "",
			  	    "",
				    "",
				    "",
				    "",
				    "",
				    "",
				    ""];
					  
EnglishIncorrect3 = ["",
					 "",
					 "",
			    	 "",
					 "",
					 "",
					 "",
					 "",
					 "",
					 ""];

MathIncorrect3 = ["",
				  "",
				  "",
			   	  "",
				  "",
				  "",
			      "",
				  "",
				  "",
			   	  ""];
				  
ScienceIncorrect3 = ["",
					 "",
					 "",
			    	 "",
					 "",
					 "",
					 "",
					 "",
					 "",
					 ""];
					 
PurdueIncorrect3 = ["",
					"",
					"",
			    	"",
					"",
					"",
					"",
					"",
					"",
					""];
					
MusicIncorrect3 = ["",
				   "",
				   "",
			   	   "",
				   "",
			   	   "",
				   "",
				   "",
				   "",
				   ""];
				   
GeographyIncorrect3 = ["",
					   "",
					   "",
			    	   "",
					   "",
					   "",
					   "",
					   "",
					   "",
					   ""];
					   
CSIncorrect3 = ["",
				"",
				"",
			    "",
				"",
				"",
				"",
				"",
				"",
				""];
				
HealthIncorrect3 = ["",
					"",
					"",
			    	"",
					"",
					"",
					"",
					"",
					"",
					""];
					
IndianaIncorrect3 = ["",
					 "",
					 "",
			    	 "",
					 "",
					 "",
					 "",
					 "",
					 "",
					 ""];

				   
//Sets TriviaQuestions to the 2d array
TriviaQuestions[0] = EngineeringQuestions;
TriviaQuestions[1] = SportQuestions;
TriviaQuestions[2] = EnglishQuestions;
TriviaQuestions[3] = MathQuestions;
TriviaQuestions[4] = ScienceQuestions;
TriviaQuestions[5] = PurdueQuestions;
TriviaQuestions[6] = MusicQuestions
TriviaQuestions[7] = GeographyQuestions;
TriviaQuestions[8] = CSQuestions;
TriviaQuestions[9] = HealthQuestions;
TriviaQuestions[10] = IndianaQuestions;
TriviaAnserwerCorrect[0] = EngineeringCorrect;
TriviaAnserwerCorrect[1] = SportCorrect;
TriviaAnserwerCorrect[2] = EnglishCorrect;
TriviaAnserwerCorrect[3] = MathCorrect;
TriviaAnserwerCorrect[4] = ScienceCorrect;
TriviaAnserwerCorrect[5] = PurdueCorrect;
TriviaAnserwerCorrect[6] = MusicCorrect;
TriviaAnserwerCorrect[7] = GeographyCorrect;
TriviaAnserwerCorrect[8] = CSCorrect;
TriviaAnserwerCorrect[9] = HealthCorrect;
TriviaAnserwerCorrect[10] = IndianaCorrect;
TriviaAnswerIncorrectOne[0] = EngineeringCorrect;
TriviaAnswerIncorrectOne[1] = SportCorrect;
TriviaAnswerIncorrectOne[2] = EnglishCorrect;
TriviaAnswerIncorrectOne[3] = MathCorrect;
TriviaAnswerIncorrectOne[4] = ScienceCorrect;
