/// @description Insert description here
// You can write your code in this editor

//Rows is categories
//Columns is Question
numRows = 11;
numColumns = 10;
HasAsked = 0;
TriviaQuestions = 0;
TriviaAnswerCorrect = 0;
TriviaAnswerIncorrectOne = 0;
TriviaAnswerIncorrectTwo = 0;
TriviaAnswerIncorrectThree = 0;
for(i = 0; i < numRows; i++){
	for(j = 0; j < numColumns; j++){
		HasAsked[i, j] = 0;	
	}
}

//Question Array assignments
EngineeringQuestions = ["What does force equal?", 
							"What is Einstein\'s theory of relativity?", 
							"What is Newton\'s first law?",
							"What does CAD stand for?", 
							"What are ohms used to measure?", 
							"Which is not a basic bridge type?", 
							"Which is not a basic bridge type?", 
							"Which of these is not a type of simple machine?", 
							"Which of these is not a type of Engineering?", 
							"What is the world\'s largest engineering project?", 
							"In what month is National Engineer Week in the US?"];

SportQuestions = ["How many players are on a baseball team", 
					  "How many miles is a marathon race?",
					  "What type of race is the Tour de France?",
					  "The Summer Olympics are held every ___ years?",
					  "Which sport does FIFA govern over?",
					  "The World Series is the annual \nchampionship series for which sport?",
					  "Who has won the most Olympic gold medals?",
					  "The Boston Bruins are a professional team of which sport?",
					  "Which of these is not a Formula 1 team?",
					  "How many strokes away from par is an eagle (in golf)?"];

EnglishQuestions = ["Which of these is not a play by Shakespeare?",
						"Who wrote Frankenstein?",
						"Which of these is not an American author?",
						"Which of the following is not \na type of figurative language?",
						"Which of these is not a type of poem?",
						"Who wrote Pride and Prejudice?",
						"What is the term for a word that is \nthe opposite in meaning to another word?",
						"Who wrote The Iliad and The Odyssey?",
						"Adverbs are a part of speech that can \nbe used to modify which other part(s) of speech?",
						"Which of these is a subordinating conjunction?"];
						
MathQuestions = ["Which of these is a prime number?",
				 "Who is credited with discovering calculus?",
				 "How many sides does a rhombus have?",
				 "What does the E in PEMDAS stand for?",
				 "What is 187/11?",
				 "What number does the \nroman numeral LXIX represent?",
				 "What is a polygon with 7 sides called?", 
				 "What is 2^6?", 
				 "What is the mean of the \nfollowing 4 numbers: 4, 8, 1, 3?",
				 "What is 6% of 50?"];

ScienceQuestions = ["What is the symbol for the element gold?",
						"The first-ever living creature to be\n cloned, Dolly, was what type of animal?",
						"What is a Geiger Counter used to measure?",
						"Which component of an \natom has a negative charge?",
						"What is the pH of water?",
						"What is the most abundant element \nin the atmosphere?",
						"What layer of the Earth lays right under the crust?",
						"What planet in our solar system \nis the 2nd closest to the Sun?",
						"What is the chemical formula \nfor hydrogen peroxide?",
						"Which of these types of electromagnetic \nradiation has the shortest wavelength?"];

PurdueQuestions = ["How tall is the world\'s largest bass drum?",
					   "How many Purdue alum have become astronauts?",
					   "How many Boilermaker Special trains have there been?",
					   "Which dorm building at Purdue has its own radio studio?",
					   "What is the oldest building on Purdue\'s campus?",
					   "When was Purdue founded?",
					   "Which of these famous people is \nnot associated with Purdue?",
					   "How many undergraduate engineering \nprograms are offered at Purdue?",
					   "When was Purdue Pete created?",
					   "When was the Purdue Memorial Union Built?"];
			
MusicQuestions = ["What musical is the song\n \"Memory\" from?",
				      "Who wrote Rent and\n Tick...Tick...Boom?",
					  "What musical is the song\n \"Cell Block Tango\" from?",
					  "Who is the only country artist to have\n a Top 20 hit on the Billboard Hot Country Songs\n chart for six straight decades?",
					  "Which of these is\n not a song by Elvis?",
					  "Which of these is not\n a song by Queen?",
					  "Which artist has won the\n most Grammys overall?",
					  "What does the word \n\"staccato\" mean in music?",
					  "Which of these instruments is not\n considered a brass instrument?",
					  "Which of these award shows recognizes\n excellence in live Broadway theater?"];

GeographyQuestions = ["How many continents are there?",
						  "What is the smallest country in \nthe world (in terms of land mass)?",
						  "How many Great Lakes are there?",
						  "In which country is Machu Picchu?",
						  "What is the tallest mountain in America?",
					      "What is the only continent with \nland in all four hemispheres?",
					      "What country has the most volcanoes?",
					      "How many countries are in Africa?",
					      "What is the longest river in the world?",
					      "In which ocean is the Mariana Trench?"];
						  
CSQuestions = ["What does HTML stand for?",
				   "What is 7 in binary?",
				   "What does OS stand for?",
			   	   "Which is not a sorting algorithm?",
			   	   "Which is not a data structure?",
				   "Who is the father of computer science?",
				   "What is the character used in Java to \nindicate the end of a line of code?",
				   "According to Moore\'s Law, computing \npower will double every ____ years.",
				   "What is it called when a function calls itself?",
				   "Who is the inventor of HolyC, a programming \nlanguage used for the development of TempleOS?"];	
				   
HealthQuestions = ["What is the recommended threshold for caffeine intake?",
				       "What is the most common STD for college students?",
					   "The Purdue Plague refers to what?",
					   "What is the largest organ in the human body?",
					   "What is the Universal Donor blood type?",
					   "How many teeth do adult humans have?",
			   	 	   "Which government agency is in \ncharge of pharmaceutical regulation?",
					   "What is the largest bone in the human body?",
					   "Which of these is a bacterial infection?",
					   "What is the medical term for high blood pressure?"];			
					   
IndianaQuestions = ["What are Indiana natives called?",
				        "When was Indiana founded?",
					    "What is the most dangerous city in Indiana?",
					    "What is the name of Indiana\'s \nsingle national park?",
					    "How many laps are in the Indy 500?",
					    "Which cartoon character(s) is/are \ncanonically from Indiana?",
			   	 	    "Which VP wasn\'t from Indiana?",
					    "Which of these is not the name of a city in indiana?",
					    "What is the Indiana state bird?",
					    "What is the top crop in Indiana (by value)?"];	
			
//Correct answer array assignments
EngineeringCorrect = ["F = m*a",
						  "E = mc^2",
						  "An object at rest remains at rest, or if in motion,\n remains in motion at a constant velocity\n unless acted on by an external force,",
						  "Computer Aided Design",
						  "Resistance",
						  "tension bridge",
						  "hinge",
						  "Psycho-Engineering",
						  "The International Space Station",
						  "February"];
SportCorrect = ["9",
				   "26.2",
		   		   "Bicycle Race",
				   "4",
				   "Soccer",
				   "Baseball",
				   "Michael Phelps",
			 	   "Hockey",
				   "Meta",
				   "2 Strokes Below"];
				   
EnglishCorrect = ["The Glass Menagerie",
					  "Mary Shelly",
					  "Jane Austin",
					  "Predicate",
					  "Novella",
					  "Jane Austin",
					  "Antonym",
					  "Homer",
					  "All listed",
					  "Because"];
			
MathCorrect = ["97",
				   "Newton",
				   "4",
				   "Exponentials",
				   "17",
				   "69",
				   "Heptagon",
				   "64",
				   "4",
				   "3"];
				   
ScienceCorrect = ["Au",
					  "Sheep",
					  "Radiation",
					  "Electron",
					  "7",
					  "Nitrogen",
					  "Mantle",
					  "Venus",
					  "H2O2",
					  "X-rays"];
					  
PurdueCorrect = ["10 ft",
					 "27",
					 "7",
					 "Wiley",
					 "University Hall",
					 "1869",
					 "Johnathan Banks",
					 "18",
					 "1940",
				     "1924"];
					 
MusicCorrect = ["Cats",
					"Jonathan Larson",
				    "Chicago",
				    "Dolly Parton",
				    "Help!",
				    "Life on Mars?",
				    "Beyonce",
				    "Short",
			   	    "Saxophone",
				    "Tonys"];
					
GeographyCorrect = ["7",
						"Vatican City",
						"5",
						"Peru",
						"Mount Denali",
						"Africa",
						"Indonesia",
						"54",
						"The Nile",
						"The Pacific Ocean"];
						
CSCorrect = ["Hypertext Markup Language",
				 "0111",
			     "Operating System",
			     "Hyper sort",
				 "Tree",
				 "Alan Turing",
				 ";",
				 "2",
				 "Recursion",
				 "Terry Davis"];
				 
HealthCorrect = ["400 mg",
				     "HPV",
					 "A flu that goes around campus seemingly every fall",
					 "Skin",
					 "O-",
				     "32",
				     "FDA",
					 "Femur",
					 "Lyme disease",
			   	     "Hypertension"];
				   
IndianaCorrect = ["Hoosiers",
					  "1816",
					  "Indianapolis",
			     	  "Indiana Dunes",
					  "200",
					  "Garfield",
					  "Charles Curtis",
					  "Belize",
					  "Cardinal",
					  "Corn"];
	
//Incorrect1 answer array assignments
EngineeringIncorrect1 = ["F = mc^2",
						 "F = m*a",
						 "F = m*a",
						 "Chips And Dip",
						 "Power",
						 "Truss bridge",
						 "Lever",
						 "Industrial",
						 "Pyramids of Giza",
						 "April"];
						 
SportIncorrect1 = ["12",
					"13.1",
				    "Car race",
			  	    "2",
				    "Baseball",
				    "Football",
				    "Usain Bolt",
				    "Baseball",
				    "Mercedes",
				    "1 stroke below"];

EnglishIncorrect1 = ["Othello",
					 "Neil Geimann",
					 "Mark Twain",
			    	 "Simile",
					 "Sonnet",
					 "Emily Bronte",
					 "Synonym",
					 "Plato",
					 "Verbs",
					 "And"];

MathIncorrect1 = ["91",
				  "Einstein",
				  "3",
			   	  "Exclamation",
				  "18",
				  "59",
			      "Nonagon",
				  "32",
				  "7",
			   	  "5"];
				  
ScienceIncorrect1 = ["Ag",
					 "Pig",
					 "Heat",
			    	 "Proton",
					 "10",
					 "Oxygen",
					 "Inner Core",
					 "Mercury",
					 "H2O",
					 "Radio waves"];
					 
PurdueIncorrect1 = ["15 ft",
					"10",
					"8",
			    	"Tark",
					"Schleman",
					"1894",
					"Amelia Earhart",
					"12",
					"1869",
					"1942"];
					
MusicIncorrect1 = ["Les Miserables",
				   "Andrew Lloyd Webber",
				   "Company",
			   	   "Willie Nelson",
				   "Heartbreak Hotel",
			   	   "Don\'t Stop Me Now",
				   "Stevie Wonder",
				   "Long",
				   "Trumpet",
				   "Oscars"];
				   
GeographyIncorrect1 = ["5",
					   "Monaco",
					   "3",
			    	   "Brazil",
					   "Mount Appalachia",
					   "Europe",
					   "Iceland",
					   "1",
					   "The Amazon",
					   "The Atlantic Ocean"];
					   
CSIncorrect1 = ["High Tech Markup Language",
				"1011",
				"Open Source",
			    "Merge sort",
				"Box",
				"Gustavo Rodriguez-Rivera",
				":",
				"4",
				"Iteration",
				"John McAfee"];
				
HealthIncorrect1 = ["300 mg",
					"Gonorrhea",
					"A virus that killed 13 students on campus in 1963",
			    	"Stomach",
					"AB+",
					"36",
					"USDA",
					"Humorous",
					"Covid-19",
					"Hypotension"];
					
IndianaIncorrect1 = ["Indianans",
					 "1776",
					 "Gary",
			    	 "Yellowstone",
					 "500",
					 "Homer Simpson",
					 "Thomas R. Marshall",
					 "Mexico",
					 "Blue Jay",
					 "Soy beans"];
				
//Incorrect2 answer array assignments
EngineeringIncorrect2 = ["F=m*v",
						 "E = 1/2mv^2",
						 "Every action has an equal and opposite reaction",
						 "Computer Application Designation",
						 "Current",
						 "Suspension bridge",
						 "Pulley",
						 "Marine",
						 "The Eiffel Tower",
						 "July"];
						 
SportIncorrect2 = ["15",
					"22",
				    "Horse race",
			  	    "5",
				    "Rugby",
				    "Basketball",
				    "Larisa Latynina",
				    "Basketball",
				    "Red Bull",
				    "1 stroke over"];
					  
EnglishIncorrect2 = ["A Midsummer Night\'s Dream",
					 "John Polidori",
					 "Ernest Hemmingway",
			    	 "Onomatopoeia",
					 "Haiku",
					 "Charles Dickens",
					 "Homonym",
					 "Socrates",
					 "Adjectives",
					 "Or"];

MathIncorrect2 = ["92",
				  "Fermat",
				  "5",
			   	  "Equals",
				  "16",
				  "119",
			      "Decagon",
				  "128",
				  "5",
			   	  "6"];
				  
ScienceIncorrect2 = ["Gd",
					 "Cow",
					 "Current",
			    	 "Neutron",
					 "1",
					 "Helium",
					 "Outer Core",
					 "Earth",
					 "HO2",
					 "Microwaves"];
					 
PurdueIncorrect2 = ["8 ft",
					"42",
					"5",
			    	"Shreve",
					"Physics Building",
					"1912",
					"Neil Armstrong",
					"15",
					"1923",
					"1963"];
					
MusicIncorrect2 = ["Company",
				   "Lin Manuel Miranda",
				   "Phantom of the Opera",
			       "Dierks Bentley",
				   "Jailhouse Rock",
				   "I Want To Break Free",
				   "Paul McCartney",
				   "Loud",
				   "Tuba",
				   "Emmys"];
				   
GeographyIncorrect2 = ["8",
					   "Luxembourg",
					   "4",
			    	   "Ecuador",
					   "Mount Everest",
					   "Asia",
					   "United States",
					   "16",
					   "The Yangtze",
					   "The Indian Ocean"];
					   
CSIncorrect2 = ["Human Tech Messaging Language",
				"0101",
				"Operations Scope",
			    "Insertion sort",
				"Bush",
				"John von Neumann",
				"None",
				"5",
				"Abstraction",
				"Markus Perrson"];
				
HealthIncorrect2 = ["250 mg",
					"Syphilis",
					"An outbreak of mono on campus in 2007",
			    	"Large intestine",
					"O+",
					"28",
					"EPA",
					"Fibula",
					"The flu",
					"Hyperthermia"];
					
IndianaIncorrect2 = ["Boilermakers",
					 "1812",
					 "Lafayette",
			    	 "Hoosier",
					 "312",
					 "The Rugrats",
					 "Mike Pence",
					 "Peru",
					 "Turkey",
					 "Pumpkins"];
				
//Incorrect3 answer array assignments				
EngineeringIncorrect3 = ["F = d/t",
						 "s = d/t",
						 "Energy can not be created or destroyed",
						 "Construction And Design",
						 "Force",
						 "Arch bridge",
						 "Inclined plane",
						 "Manufacturing",
						 "Airbus A380 Aircraft",
						 "November"];
						 
SportIncorrect3 = ["13",
					"31.2",
				    "Foot race",
			  	    "10",
				    "Fencing",
				    "Hockey",
				    "Carl Lewis",
				    "Football",
				    "Ferrari",
				    "2 strokes over"];
					  
EnglishIncorrect3 = ["The Twelfth Night",
					 "Mary Wollstonecraft",
					 "Toni Morrison",
			    	 "Hyperbole",
					 "Ballad",
					 "Mark Twain",
					 "Heteronym",
					 "Aristotle",
					 "Adverbs",
					 "But"];

MathIncorrect3 = ["99",
				  "Pascal",
				  "7",
			   	  "Evaluate",
				  "19",
				  "64",
			      "Sevegon",
				  "16",
				  "3",
			   	  "2"];
				  
ScienceIncorrect3 = ["G",
					 "Rat",
					 "Luminosity",
			    	 "Nucleus",
					 "8",
					 "Argon",
					 "Tetrosphere",
					 "Mars",
					 "HO",
					 "Visible Light"];
					 
PurdueIncorrect3 = ["12 ft",
					"35",
					"1",
			    	"McCutcheon",
					"Smith Hall",
					"1848",
					"Orville Redenbacher",
					"23",
					"1974",
					"1897"];
					
MusicIncorrect3 = ["Annie",
				   "Oscar Hammerstein",
				   "Hamilton",
			   	   "Blake Shelton",
				   "Can\'t Help Falling in Love",
			   	   "We Are The Champions",
				   "Aretha Franklin",
				   "Quiet",
				   "French Horn",
				   "Pulitzer Prize"];
				   
GeographyIncorrect3 = ["226",
					   "Iceland",
					   "7",
			    	   "Paraguay",
					   "Mount Rushmore",
					   "South America",
					   "Japan",
					   "116",
					   "The Rio Grande",
					   "The Arctic Ocean"];
					   
CSIncorrect3 = ["Text Messaging Language",
				"0011",
				"Overhead Syntax",
			    "Bubble sort",
				"Pile",
				"Bill Gates",
				"\"",
				"10",
				"Repitition",
				"John Carmack"];
				
HealthIncorrect3 = ["200 mg",
					"Herpes",
					"A strain of the coronavirus that mutated on Purdue\'s campus",
			    	"Lungs",
					"A-",
					"30",
					"CDC",
					"Spine",
					"Chicken pox",
					"Hypothermia"];
					
IndianaIncorrect3 = ["Indys",
					 "1796",
					 "Bloomington",
			    	 "Yankee Park",
					 "250",
					 "Casper the Friendly Ghost",
					 "Charles W. Fairbanks",
					 "Honduras",
					 "Robin",
					 "Wheat"];

				   
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

//Correct answer placement into 2d array
TriviaAnswerCorrect[0] = EngineeringCorrect;
TriviaAnswerCorrect[1] = SportCorrect;
TriviaAnswerCorrect[2] = EnglishCorrect;
TriviaAnswerCorrect[3] = MathCorrect;
TriviaAnswerCorrect[4] = ScienceCorrect;
TriviaAnswerCorrect[5] = PurdueCorrect;
TriviaAnswerCorrect[6] = MusicCorrect;
TriviaAnswerCorrect[7] = GeographyCorrect;
TriviaAnswerCorrect[8] = CSCorrect;
TriviaAnswerCorrect[9] = HealthCorrect;
TriviaAnswerCorrect[10] = IndianaCorrect;

//Incorrect1 answer placement into 2d array
TriviaAnswerIncorrectOne[0] = EngineeringIncorrect1;
TriviaAnswerIncorrectOne[1] = SportIncorrect1;
TriviaAnswerIncorrectOne[2] = EnglishIncorrect1;
TriviaAnswerIncorrectOne[3] = MathIncorrect1;
TriviaAnswerIncorrectOne[4] = ScienceIncorrect1;
TriviaAnswerIncorrectOne[5] = PurdueIncorrect1;
TriviaAnswerIncorrectOne[6] = MusicIncorrect1;
TriviaAnswerIncorrectOne[7] = GeographyIncorrect1;
TriviaAnswerIncorrectOne[8] = CSIncorrect1;
TriviaAnswerIncorrectOne[9] = HealthIncorrect1;
TriviaAnswerIncorrectOne[10] = IndianaIncorrect1;

//Incorrect2 answer placement into 2d array
TriviaAnswerIncorrectTwo[0] = EngineeringIncorrect2;
TriviaAnswerIncorrectTwo[1] = SportIncorrect2;
TriviaAnswerIncorrectTwo[2] = EnglishIncorrect2;
TriviaAnswerIncorrectTwo[3] = MathIncorrect2;
TriviaAnswerIncorrectTwo[4] = ScienceIncorrect2;
TriviaAnswerIncorrectTwo[5] = PurdueIncorrect2;
TriviaAnswerIncorrectTwo[6] = MusicIncorrect2;
TriviaAnswerIncorrectTwo[7] = GeographyIncorrect2;
TriviaAnswerIncorrectTwo[8] = CSIncorrect2;
TriviaAnswerIncorrectTwo[9] = HealthIncorrect2;
TriviaAnswerIncorrectTwo[10] = IndianaIncorrect2;

//Incorrect3 answer placement into 2d array
TriviaAnswerIncorrectThree[0] = EngineeringIncorrect3;
TriviaAnswerIncorrectThree[1] = SportIncorrect3;
TriviaAnswerIncorrectThree[2] = EnglishIncorrect3;
TriviaAnswerIncorrectThree[3] = MathIncorrect3;
TriviaAnswerIncorrectThree[4] = ScienceIncorrect3;
TriviaAnswerIncorrectThree[5] = PurdueIncorrect3;
TriviaAnswerIncorrectThree[6] = MusicIncorrect3;
TriviaAnswerIncorrectThree[7] = GeographyIncorrect3;
TriviaAnswerIncorrectThree[8] = CSIncorrect3;
TriviaAnswerIncorrectThree[9] = HealthIncorrect3;
TriviaAnswerIncorrectThree[10] = IndianaIncorrect3;