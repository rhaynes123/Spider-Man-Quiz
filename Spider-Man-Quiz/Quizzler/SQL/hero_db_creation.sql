HEROES.db
-- .database
DROP TABLE QUESTIONS;

CREATE TABLE QUESTIONS(
	Id INTEGER NOT NULL PRIMARY KEY
AUTOINCREMENT,
QuestionText TEXT NOT NULL,
AnswerResponse BOOLEAN NOT NULL,-- 0 is falase 1 is true
CorrectAnswer TEXT NOT NULL,
Difficulty TEXT NOT NULL,
Category TEXT NOT NULL,
DateAdded TIMESTAMP DEFAULT (DATETIME('now','localtime'))
);
-- CREATE UNIQUE INDEX idx_questions_id ON QUESTIONS (Id);-- Dropped
-- CREATE UNIQUE INDEX idx_questions_difficulty ON QUESTIONS (Difficulty);-- Dropped
-- CREATE UNIQUE INDEX idx_questions_category ON QUESTIONS (Category);-- Dropped
-- CREATE UNIQUE INDEX idx_questions_dateadded ON QUESTIONS (DateAdded);-- Dropped
-- 1 -15
-- 1st Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Spider-Man 1st appeared in Amazing Fantasy 15.",
	1,
	"Spider-Man did originally appear in Amazing Fantasy #15.",
	"Easy",
	"Spider-Man"
	);

-- 2nd Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"The Punisher was originally a Spider-Man villain.",
	1,
	"The Punisher was indeed originally hired to kill Spider-Man.",
	"Easy",
	"Spider-Man"
	);

-- 3rd Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"No version of Spider-Man has ever killed.",
	0,
	"Many alternate version's of Spider-Man have killed enemies.",
	"Hard",
	"Spider-Man"
	);


-- 4th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Mile Morales is half African American half Caucasian.",
	0,
	"Miles Morales is half African American half Pureto Rican.",
	"Hard",
	"Spider-Man"
	);
-- 5th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Spider-Woman(Jessica Drew) can shoot Venom Blasts.",
	1,
	"Spider-Woman can shoot bio-electric Venom Blasts.",
	"Easy",
	"Spider-Man"
	);

-- 6th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Miguel O'Hara is the Spider-Man from 2099.",
	1,
	"Miguel O'Hara is indeed Spider-Man 2099.",
	"Medium",
	"Spider-Man"
	);

-- 7th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Spider-Man is actually a mutant.",
	0,
	"Spider-Man is what is called a mutate. He does not possess a X-Gene which mutants have.",
	"Medium",
	"Spider-Man"
	);

-- 8th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Chamelon was Spider-Man's 1st SUPER-villain.",
	1,
	"Chameolon was Spider-Man's 1st Super Villain showing up in Amazing Spider-Man #1.",
	"Hard",
	"Spider-Man"
	);

-- 9th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Dr.Octopus took over Spider-Man's body and become the Superior Spider-Man for a time.",
	1,
	"Dr.Octopus did indeed take over Spider-Man's body and became known as the Superio Spider-Man.",
	"Hard",
	"Spider-Man"
	);

-- 10th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Spider-Man was an original member of the Avengers.",
	0,
	"Spider-Man did not join the Avengers officially until New Avengers Volume 1 Issue 1 in January 2005.",
	"Medium",
	"Spider-Man"
	);

-- 11th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Spider-Man once had 8 arms.",
	0,
	"Spider-Man once had 6 arms.",
	"Medium",
	"Spider-Man"
	);

-- 12th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Michael Morbius is a real Vampire.",
	0,
	"Morbius is a mutate but not a true supernatural vampire.",
	"Medium",
	"Spider-Man"
	);

-- 13th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Peter Parker is a genius in the fields of robotics.",
	0,
	"Despite being a genius robotics is one of Peter's weakest sciences.",
	"Hard",
	"Spider-Man"
	);

-- 14th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Peter Parkers IQ is above 200.",
	1,
	"Peter's IQ is near 250.",
	"Hard",
	"Spider-Man"
	);

-- 15th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"The Human Torch (Johnny Storm) taught Spider-Man how to drive.",
	1,
	"Peter didn't learn to drive since he could web swing since a young age.",
	"Hard",
	"Spider-Man"
	);
-- 16 - 30

-- 16th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Spider-Man's original costume has underarm web wings.",
	1,
	"Spider-Man's originally had under arm wings but artists stopped drawing them.",
	"Medium",
	"Spider-Man"
	);

-- 17th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Spider-Man gave Spider-Woman(Jessica Drew) her powers.",
	0,
	"Spider-Man and Spider-Woman have nothing in common as far a origin.",
	"Medium",
	"Spider-Man"
	);

-- 18th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Wolverine(Logan) is Spider-Man's godfather.",
	1,
	"Richard and Mary Parker made Logan Peter's godfather during a spy mission.",
	"Hard",
	"Spider-Man"
	);

-- 19th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Spider-Man hates Star Wars.",
	1,
	"Spider-Man has been vocal of not being a fan of Star Wars.",
	"Hard",
	"Spider-Man"
	);

-- 20th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Spider-Man and Deadpool are great friends.",
	0,
	"Spider-Man tolerates Deadpool and will work with him but openly dispises like him",
	"Hard",
	"Spider-Man"
	);

-- 21st Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Spider-Man's webbing is one of his super powers.",
	0,
	"Spider-Man built mechanical web shooters to make webs.",
	"Easy",
	"Spider-Man"
	);

-- 22nd Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"FireStar was created for the TV show Spider-Man and his Amazing Friends.",
	1,
	"Firestar didn't exist until the Spider-Man and his Amazing Friends TV show.",
	"Hard",
	"Spider-Man"
	);


-- 23rd Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"OverDrive is both a fan of Spider-Man and a supervillain.",
	1,
	"OverDrive is a big Spider-Man fan.",
	"Hard",
	"Spider-Man"
	);

-- 24th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Green Goblin originally rode a rocket Broom Stick.",
	1,
	"Green Goblin debuyed riding of rocket Broom Stick.",
	"Hard",
	"Spider-Man"
	);

-- 25th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Peter Parker spent time working as a high school Science Teacher.",
	1,
	"During the mid 2000s Spider-Man taught science at Mid-Town High.",
	"Hard",
	"Spider-Man"
	);


-- 26th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Spider-Man worked as a photographer for the Daily Planet.",
	0,
	"He worked at the Daily Bugle.",
	"Easy",
	"Spider-Man"
	);

-- 27th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Wall crawling is one of his natural powers.",
	0,
	"He worked at the Daily Bugle.",
	"Easy",
	"Spider-Man"
	);

-- 28th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Spider-Man lives in New York City.",
	1,
	"Peter Parker indeed lives in New York City.",
	"Easy",
	"Spider-Man"
	);

-- 29th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Spider-Man's Uncle is named Richard.",
	0,
	"Peter Parker's famous uncle is named Ben.",
	"Easy",
	"Spider-Man"
	);

-- 30th Question
INSERT INTO QUESTIONS(
	QuestionText, 
	AnswerResponse, 
	CorrectAnswer,
	Difficulty,
	Category) 
VALUES(
	"Spider-Man can talk to actual spiders.",
	0,
	"There was a time when this was true but Spider-Man quickly loss that power.",
	"Easy",
	"Spider-Man"
	);
