
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

#define EFF_PATH "/home/phil/fuerte_workspace/sandbox/AU_UAV_stack/AU_UAV_ROS/scores/good/CONES/effiencies.txt"

//#define INPUT_DIRECTORY "/home/phil/fuerte_workspace/sandbox/AU_UAV_stack/AU_UAV_ROS/courses/"
#define SCORES_DIRECTORY "/home/phil/fuerte_workspace/sandbox/AU_UAV_stack/AU_UAV_ROS/scores/good/CONES/"
#define DATA_DIRECTORY "/home/phil/"//fuerte_workspace/sandbox/AU_UAV_stack/AU_UAV_ROS/scores/"
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
	

	if(true){ //dont prompt for now, just DO IT.


		char filename[256];
		printf("Enter the file with all the scores in it: ");
		scanf("%s", filename);
		
		std::string allScores = std::string(filename);//filename has the name of the course list file
	
		FILE * fp;
		fp = fopen((DATA_DIRECTORY+allScores).c_str(),"r"); //open the score list file

		if(fp==NULL){printf("BAD SCORE FILE\n");}
		else{
			
			char numbers[256];
			double cur=0.0;
			double total = 0.0;
			int num = 0;
			char buffer[256];

			//while we have a score file in the list
			while(fgets(buffer, sizeof(buffer), fp)){  //fgets stops at a newline or size or eof
	
				//check for useless lines
				if(buffer[0] == '#' || isBlankLine(buffer))
				{
				//this line is a comment
					continue;
				}
	
				std::string myStr = std::string(buffer);
				myStr = myStr.substr(0,myStr.size()-1);//get rid of the n

				total += atof(myStr.c_str());
				num++;


			}//while

			printf("AVG: %f\n",(total/num));
				
			fclose(fp);
		}//else fp opened properly
	}//if yes do stats



	return 0;
}//main
