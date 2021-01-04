@ECHO OFF
REM stops the command line from saying absolutely everything that happens (clean outputs)

REM clears the screen to make the command line look cleaner
CLS

REM lets greets the user
@ECHO Hello, welcome git cloner

REM allows the use of delayed expansion for if statements and for loops
SETLOCAL enabledelayedexpansion


REM checks to see if there was a first parameter (means that this was run in command mode)
IF "%1"=="" (

	REM Asks the user for a file name to edit, and sets the path variable to the input
	SET /p chosenRepo=Enter the name of the repo to clone: 

) ELSE (

	REM Checks to see if there wasnt a second parameter (no need to check past this, if this is empty, next ones will be too)
	IF "%2"=="" (
	
		REM Sets the variable if there was only one parameter
		SET chosenRepo=%1

	) ELSE (
		
		REM lets the user know that they must only use one parameter
		@ECHO Please only enter one parameter with this batch file 
		@ECHO To try again, please rewrite the command but with only one file path this time
			
		REM ends the bat program, which will allow the user to try to use the command mode again
		GOTO endOfProgram
	)	
)

REM checks to see if nothing was entered
IF "%chosenRepo%"=="" (

	REM lets the user know that the program will end and then ends the program
	@ECHO No repo was entered, so the program will end
	GOTO endOfProgram

) ELSE (
	
	REM calls the git clone function
	git clone https://github.com/KallumP/"%chosenRepo%"

)

:endOfProgram

SET chosenRepo=
