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
				   "",
				   "",
				   "",
				   "",
				   ""];	
				   
HealthQuestions[10] = ["",
				       "",
					   "",
					   "",
					   "",
					   "",
			   	 	   "",
					   "",
					   "",
					   ""];			
					   
IndianaQuestions[10] = ["",
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

