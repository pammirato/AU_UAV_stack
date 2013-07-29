

README for summer 2013 REU project at Auburn by Phil Ammirato and Juanchen Li,
supervised by Prof. Saad Biaz and graduate student Davd Jones.


Contents

I) Intoroducion to project

II) How to Run collision avoidance algorithms in ROS fuerte
	i)	IPN - Inverse Proportional Navigation(2012)
	ii)	GCC - Geometric Collision Cones(2013)
	iii)	SA - Simulated Annealing using Collsion Cones(2012) 
	iv)	A* - A-star path planning (2011/2013)
	v)	APF - Artificial Potential Fields(2012)

III) Using the evaluation software
	i) evaluator
	ii) automator
	iii) generator
	iv) autoScore	
	v) examples



*******************************************************************************************************





I) Introduction

	Our project was a study of collision avoidance algorithms for UAVs. We tested five centralized algorithms
	in a simulated environment using the ROS fuerte architecture, in Ubuntu. The algorithms tested were

		i)	IPN - Inverse Proportional Navigation(2012)
		ii)	GCC - Geometric Collision Cones(2013)
		iii)	SA - Simulated Annealing using Collsion Cones(2012) 
		iv)	A* - A-star path planning (2011/2013)
		v)	APF - Artificial Potential Fields(2012)

	The year corresponds to when the algorithm was implemented by members of the Auburn REU team.

	In order to get all of these different implementations running on the same system, a little bit of file manipulation
	is needed. The rest of this README goes into detail of how to get each algorithm to run, and how to use the software 
	that was developed to test the implementations.




	****AU_UAV_GUI was not touched and is just included for completeness


********************************************************************************************************************************









II) How to Run collision avoidance algorithms in ROS fuerte


-Files that may have to be manipulated include:

	ripna.cpp  - used by IPN, GCC   is irrelevant for other algorithms(can be anything but is needed to compile)
	collisionAvoidance.cpp  -used by all
	coordinator.cpp  -used by all

	*simulator.cpp  -this is only to speed up or slow down simulations using the "looprate"

	**some algorithms were deemed "safe" to speed up, some were not. "Safe" was defined as follows:
		A looprate of 1 was considered the standard, real time speed.
	
		For the deterministic algorithms, IPN, GCC, A*, APF, if a course file could be run with a higher loop rate
		and still have the same results in the evaluator that new looprate was considered safe. The two evaluations
		needed to have the exact same Minimum Distance, Actual Distance, conflicts and collisions for every plane.
		
		For SA, which used some randomness, exact results were not needed, but similar numbers were needed to consider
		a new looprate safe. 



***************************************************************************


i) IPN - Inverse Proportional Navigation

	-use ripnaORG.cpp as ripna.cpp
	-use collisionAvoidanceORG.cpp as collisionAvoidance.cpp
 
	-safe up to a looprate of 10 at least.

***************************************************************************
 
-

ii) GCC - Geometric Collision Cones

	-use ripnaCONES.cpp as ripna.cpp
	-use collisionAvoidanceORG.cpp as CollisionAvoidance.cpp

	-safe up to a looprate of 10 at least.

***************************************************************************


iii) SA - Simulated Annealing

	-ripna.cpp does not matter (as long as it is there for rosmake)
	-use collisionAvoidanceANNEALING.cpp as collisionAvoidance.cpp

	*NOT SAFE TO SPEED UP AT ALL  -running simulated annealing takes forever ~.5 seconds

****************************************************************************


iv) A* - A-star path planning

	-ripna.cpp does not matter (as long as it is there for rosmake)
	-collisionAvoidance.cpp should be made to do nothing(uncomment lines 84-86 in collisionAvoidanceORG.cpp)
	-use coordinatorASTAR.cpp as coordinator.cpp

	-requires all files in a_star folder

	*safe up to a looprate of 10 at least.

****************************************************************************



v) APF - Artificial Potenial Fields

	-all APF files are in folder AU_UAV_Team1  **NOT AU_UAV_ROS

	-to run APF with gui or evaluator use launch files in guiDrivenAPF.launch or evaluationAPF.launch
		from either the AU_UAV_ROS package or AU_UAV_Team1 package(the launch files are the same in both packages)


	-to run a bunch of course files with APF, use the automator in AU_UAV_Team1/src
		or change the line "system("roslaunch AU_UAV_ROS evaluation.launch");" to "system("roslaunch AU_UAV_ROS evaluationAPF.launch");"
		in the automator in AU_UAV_ROS/src


	*safe up to a looprate of 10 at least


*****************************************************************************





*****************************************************************************************************************************






III) Using the evaluation software
	i) evaluator
	ii) automator
	iii) generator
	iv) autoScore
	v)Examples




	-Of note is the somewhat fragile naming conventions used in this software. It is explained
	in each section for that file, but if it is not making sense you may want to look at the examples
	at the end for clarification of how to best take advantage of this.


	-Also some of the files have paths hardcoded as constants. Make sure these paths are where you want them to be.
		All of these paths are #defined near the top of the files.




i) evaluator  - evaluator.cpp

	a) How to use the evaluator

	-only runs one course at a time, i.e. one course file per launch
	-to run use    "roslaunch AU_UAV_ROS evaltuaion.launch" in terminal
	
	-prompts for   name of course file, name of output file, length of simulation in seconds
	-outputs a text files with useful information about the simulation that was done

	-deletes planes upon collision, or when they have reached their last waypoint
	-will run until simulation time ends, or all planes are deleted
		*planes that reach all their waypoints will have a "Time of Death" in output file, this is when they reached their last waypoint
		*evaluator may run as much as 1 second longer than the desired simulation time, so if all planes do not get deleted
			in the given simulation time, a second evaluation with the same simulation time could give different result
			if, in that extra second a plane reaches a waypoint or two planes collide.
 
		*it is recommend to run the evaluation until all planes have been deleted.




	-another file that is generated is a _scores.txt file. This has a list of all the score files outputted by the 
	evaluator. It is named with the same whatever comes before the first '_'.   ex) a_4_500m_0.course. will output a_scores.txt
	This s really for use with the automator and autoScore.

	********

	b) A deeper look at how the evaluator works

		-The evalutator calculates both the minimum distance and actual distance as the planes go. The minimum distance
		is uppdate each time a plane hits a waypoint, and actual is updated each time an update comes in.
		


*******************************************************************************************************************


ii) automator - automator.cpp

	-compile using g++, run in terminal

	-is meant to run many course files, one after the other.

	-has a #define  constant with the max length of simulation time for an one course file
		-since the evaluator ends when all planes are deleted, it is recommened to make this constant very high
		as the automator should go to the next evaluation when the current one is finised, even if the 
		this simulation time has not been reached.

		In order to achieve this early termination, the automator writes its pid to a file so the evaluator can signal
		when it is done. The path to this file is a constant in both the automator and evaluator files. MAKE SURE THEY ARE THE SAME PATH.

	-prompts for the name of a text file that has a list of course files in it.
		ex) Enter the file with all the courses in it: a.txt

			-if you look at a.txt in AU_UAV_ROS/courses  you will see it has
			a bunEnter the file with all the courses in it: ch of course files listed, one per line. That is the format for the automator.
			Any blank lines or line beginning with a # are ignored.


	-the automator then runs the evaluator on each course file. The .score file outputed foreach .course file
	is name with whatever was before the .course.   ex) test.course would output test.score


	-The evaluator will append the names of all the score files to the appropiate _scores.txt file.
	-After all course files have been run, the automator will attempt to open a _scores file with the prefix
	of the given file. ex) if "a.txt" was inputted, then it will attmept to open "a_scores.txt"

	-The automator will then calculate some averages of all the score files, and output it to a _data.txt file,	
	again with the same prefix as the inputted file.  ex)a.txt  outputs a_data.txt

	-If the _scores.txt file does not exists, then no average is done, a message is printed out and the program ends.


******************************************************************************************************************************************



iii)generator  - generator.cpp

	a) Description

	-compile using g++, run in terminal

	-generates course files with random waypoint locations.
	-the Northwest corner of all courses is hardcoded  as a constant
	-each plane must outside a certain hardcoded buffer distance from each other at the start


	-prompts for the number of course files that will be generated

	-then prompts for 
		-number of planes for each course
		-number of waypoints per plane
		-field size for each course

	-if request to generate 4 or more course files, before asking the other prompts,
	the program will first ask if the number is the same for all course files to be generated.
	If so, then just enter the common value and that will be used for all course files generated.
	If not, then enter each individual value separated by a space.

	-the last prompt is for the "base name" of the files. Each course file will be named in this way:
		basename_numberOfPlanes_fieldSizem_index.course
	with the index starting from 0 and increasing.
		ex) a course file with 4 planes, 500 field, and "a" base name outputs a_4_500m_0.course


	-all the course files are put in AU_AV_ROS/courses/

	-also outputted is a .txt file with a list of all the course files, for the automator. The file
	is named with the base name.

	******

	b)Examples

		*To generate 10 course files with 4 planes in a 500m field, 10 waypoints each

		phil@ubuntu:~/fuerte_workspace/sandbox/AU_UAV_stack/AU_UAV_ROS/src$ ./generator
		Enter the number of courses to generate: 10

		Is the number of planes the same for each simulation?[y,n]: y
		Enter the common value: 4

		Is the number of wayPoints the same for each simulation?[y,n]: y
		Enter the common value: 10

		Is the number of field length the same for each simulation?[y,n]: y
		Enter the common value: 500

		Enter the base name for all files: a

		Settings:
		OUTPUT DIRECTORY: /home/phil/fuerte_workspace/sandbox/AU_UAV_stack/AU_UAV_ROS/courses/
		Northwest Corner: (32.6066,-85.4904)
		Plane buffer space: 36
		Generating...
		 







		*To generate 4 courses each in a 500m field with 10 waypoints, but with 4,8,16 and 32 planes respectively:

		phil@ubuntu:~/fuerte_workspace/sandbox/AU_UAV_stack/AU_UAV_ROS/src$ ./generator
		Enter the number of courses to generate: 4

		Is the number of planes the same for each simulation?[y,n]: n
		Enter number of planes for each course separated by a space:

		 4 8 16 32

		Is the number of wayPoints the same for each simulation?[y,n]: y
		Enter the common value: 10

		Is the number of field length the same for each simulation?[y,n]: y
		Enter the common value: 500
		
		Enter the base name for all files: b

		Settings:
		OUTPUT DIRECTORY: /home/phil/fuerte_workspace/sandbox/AU_UAV_stack/AU_UAV_ROS/courses/
		Northwest Corner: (32.6066,-85.4904)
		Plane buffer space: 36
		Generating...



**********************************************************************************************************************







iv) autoscore

	-compile using g++, run in terminal

	-averages data from multiple course files

	-does essentially the same thing the automator does after it run all the course files through the evaluator

	-prompts for a name of a file with all the scores listed in it 
		(this is most likely, but does not need to be, a _scores.txt file) 
		*if filename does not have a '_' in it line 215 may behave badly

	-outputs the results in a _data.txt file, using the prefix from the inputted file

	-is useful when the automator does not do the averaging because of mismatched names


************************************************************************************************************************





v) Examples

	-Following are two examples of how to efficiently use the software package and the naming conventions.

	


	(1) Generate, evaluate, and get average data for 30 course files of 4 planes in 500m field. For this example our 
		base name will be "a". A user can substitute anything they want instead, this is just for simplicity.

		First, run the generated as demonstrated above, use a base name of a.
			This will result in course files in named a_4_500m_0.course, a_4_500m_1.course, ... a_4_500m_29.course
			There will also be a file, a.txt, that has a list of all the course files

		Now, run the automator, and enter a.txt as the file.
			-This will generate score files name a_4_500m_0.score, etc.
			-This will create a file a_scores.txt with a list of all the score files
			-This will create a file a_data.txt with the averages of all the score files.


	
	*******

	(2) Generate evaluate and get average date for 30 course files of 4 planes in a 500m field and 30 course files of 4 planes in a 1000m field.
		"a" and "b" will be the base names respectively.

		First, run the generated as demonstrated above, use a base name of a and a 500m field.
			This will result in course files in named a_4_500m_0.course, a_4_500m_1.course, ... a_4_500m_29.course
			There will also be a file, a.txt, that has a list of all the course files

		Now, run the generated again as demonstrated above, using a base name of b and a 1000m field.
			This will result in course files in named b_4_1000m_0.course, b_4_1000m_1.course, ... b_4_1000m_29.course
			There will also be a file, b.txt, that has a list of all the course files

		Now you have two choices,
			First is to run the automator program twice as in example (1). But this will require that you 
			manually  run the automator program for b.txt after you run it for a.txt

			To be able to just let the automator run all the files in one go, another text file must be made. This is the choice we will make


		Put all the contents of a.txt and b.txt into a new file, let's call it c.txt
		Now c.txt has a list of all the course files you want to run.

		Now, run the automator, and enter c.txt as the file.
			-This will generate score files name a_4_500m_0.score ... a_4_500m_29.scores, b_4_1000m_0.score, etc.
			-This will create a file a_scores.txt with a list of all the score files starting with "a".
			-This will create a file b_scores.txt with a list of all the score files starting with "b".
			
			-No _data file will be created because there is no c_scores.txt file.

		To get the data files we want, we will now use autoscore

		Run autoscore and input a_scores.txt
			-This will generate a_data.txt with the averages of all the "a" files.
		
		Run autoscore and input b_scores.txt
			-This will generate b_data.txt with the averages of all the "b" files.


			
