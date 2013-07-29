
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <string>
#include <string.h>
#include <sys/wait.h>
#include <iostream>
#include <sstream>

#define ALL_SCORES_EXTENSION "_scores.txt"
#define DATA_EXTENSION "_data.txt"

#define EFF_PATH "/home/phil/fuerte_workspace/sandbox/AU_UAV_stack/AU_UAV_ROS/scores/zNumAvoids/CONES/effiencies.txt"

//#define INPUT_DIRECTORY "/home/phil/fuerte_workspace/sandbox/AU_UAV_stack/AU_UAV_ROS/courses/"
#define SCORES_DIRECTORY "/home/phil/fuerte_workspace/sandbox/AU_UAV_stack/AU_UAV_ROS/scores/"//good/MY_CONES/"
#define DATA_DIRECTORY "/home/phil/fuerte_workspace/sandbox/AU_UAV_stack/AU_UAV_ROS/scores/" //good/MY_CONES/"
/*
isBlankLine(...)
simple function for parsing to determine is a string is a "blank" line
NOTE: Copied from elsewhere
*/
bool isBlankLine(char str[])
{
	for(int i = 0; i < strlen(str); i++)
	{
		switch(str[i])
		{
			case ' ':
			case '\n':
			case '\t':
			{
				//keep checking
				break;
			}
			default:
			{
				//not a blank line character
				return false;
				break;
			}
		}
	}
	
	//we made it here, must be blank
	return true;
}



int main(){




/* ******************  NOW THE SCORE SHEET ANALYSIS ******************* */
	
	//char yn = 'y';	
	//std::string input;	
	//std::cout << "Calculate stats?[y/n]: ";
	//std::getline(std::cin, input);
	//std::cin >> input;
	//yn = input[0];

	if(true){ //dont prompt for now, just DO IT.


		char filename[256];
		printf("Enter the file with all the scores in it: ");
		scanf("%s", filename);
		

		/*there is a file, similar to the one with all the course files
		 that lists all score files. The name is generated in the 
		 evaluator, by replacing '.txt' with '_scores.txt' in the 
		 filename that lists all the course files. */

		std::string allScores = std::string(filename);//filename has the name of the course list file
		//int pos = allScores.find_first_of(".");
		//allScores = allScores.substr(0,pos);	//get rid of the .txt extension
		//allScores = allScores + ALL_SCORES_EXTENSION; //now we have the correct name
	
		FILE * allScoresFP;
		allScoresFP = fopen((SCORES_DIRECTORY+allScores).c_str(),"r"); //open the score list file

		if(allScoresFP==NULL){printf("BAD SCORE FILE\n");}
		else{

			/*here  we go through each score file in turn, reading and parsing just the 
			 first line. The evaluator makes the score files, and places the data we need on
 			 the first line, each number separted by a space.The format is

			numConflicts numCollisions totalDistance totalMinimumDistance  */

			
			//FILE *effFP = fopen(EFF_PATH,"a");
			int curConflicts = 0;
			int curCollisions = 0;
			double curActualDist = 0.0;
			double curMinDist = 0.0;
			

			FILE *scoreFP;
			char numbers[256];
			int numConflicts=0;
			int numCollisions=0;	
			double totalActualDist=0.0;
			double totalMinDist=0.0;
			int numAvoids = 0;
			double numFiles = 0.0;  //its a double because we divide by it later(dont want truncation)
			std::string allNums;
			int pos;
			char buffer[256];

			//while we have a score file in the list
			while(fgets(buffer, sizeof(buffer), allScoresFP)){  //fgets stops at a newline or size or eof
	
				//check for useless lines
				if(buffer[0] == '#' || isBlankLine(buffer))
				{
				//this line is a comment
					continue;
				}
	

				
				std::string myStr = std::string(buffer);//the name of a score file
				
				myStr = myStr.substr(0,myStr.size()-1);//get rid of the newline
				scoreFP = fopen((SCORES_DIRECTORY + myStr).c_str(),"r");//open the single score file

				if(scoreFP==NULL){printf("Could not open score file.\n");}

				else{
					numFiles++; //count of the number of score files
				
					fgets(numbers,sizeof(numbers),scoreFP);//get the first line of the score file
				
					allNums = (numbers);//put the first line in a c++ string for easy parsing
				

					/*now get each number from the line
					 just get posistion of the first space,
					 and get the substring from the begining to the space and turn that to an integer or double using stdlib
					  finally lose the part of the string before the first space*/

					pos = allNums.find_first_of(" ");
					//numConflicts += atoi(allNums.substr(0,pos).c_str());
					curConflicts = atoi(allNums.substr(0,pos).c_str());
					numConflicts += curConflicts;
					allNums = allNums.substr(pos+1);
							
					pos = allNums.find_first_of(" ");
					//numCollisions += atoi(allNums.substr(0,pos).c_str());
					curCollisions = atoi(allNums.substr(0,pos).c_str());
					numCollisions += curCollisions;
					allNums = allNums.substr(pos+1);

					pos = allNums.find_first_of(" ");
					//totalActualDist += atof(allNums.substr(0,pos).c_str());
					curActualDist = atof(allNums.substr(0,pos).c_str()); 
					totalActualDist += curActualDist;
					allNums = allNums.substr(pos+1);
				
					pos = allNums.find_first_of(" ");
					//totalMinDist += atof(allNums.substr(0,pos).c_str());
					curMinDist = atof(allNums.substr(0,pos).c_str()); 
					totalMinDist += curMinDist;

					//pos = allNums.find_first_of(" ");
					//totalMinDist += atof(allNums.substr(0,pos).c_str());
					allNums = allNums.substr(pos+1);

					pos = allNums.find_first_of("\n");
					numAvoids += atof(allNums.substr(0,pos).c_str());


					fclose(scoreFP);

					//fprintf(effFP,"%f\n",(curMinDist/curActualDist));
				}//else  - single score file opened

			}//while there is another score file	
			
			//fclose(effFP);

			fclose(allScoresFP);//close the score list file			


	/* now we average everything out and write it out to a file*/


			double avgConflicts;
			double avgCollisions;
			double avgActualDist;
			double avgMinDist;
			double effiency;
			double avgAvoids;

			avgConflicts = numConflicts/numFiles;
			avgCollisions = numCollisions/numFiles;
			avgActualDist = totalActualDist/numFiles;
			avgMinDist = totalMinDist/numFiles;
			effiency = avgMinDist/avgActualDist; //should be < 1
			avgAvoids = numAvoids/numFiles;


			/* *naming convention* */
			/*same as making score list, but now replace '.txt' from course list
			 with '_data.txt*/

			std::string data = std::string(filename);
			pos = data.find_first_of("_");
			data = data.substr(0,pos);	//get rid of the .txt extension
			data = data + DATA_EXTENSION;
			
			FILE * dataFP;
			dataFP = fopen((DATA_DIRECTORY + data).c_str(),"w");

			fprintf(dataFP,"Average Conflicts: %f\n"
					"Average Collisions: %f\n"
					"Average Distance Traveled: %f\n"
					"Average Minimum Distance needed: %f\n"
					"Average effiency: %f\n"
					"Average Avoids: %f\n",
			           avgConflicts,avgCollisions,avgActualDist,avgMinDist,effiency, avgAvoids);


			fclose(dataFP);
		}//else allScoresFP opened properly
	}//if yes do stats



	return 0;
}//main
