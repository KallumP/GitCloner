#Greets the user
echo Welcome to git cloner by Kallum P.

#sets the chosen repo variable to the first parameter
chosenRepo=$1

#checks to see if the first parameter was empty
if [ "$1" = "" ]
then

	#if it was empty, then it asks for the file name (intereactive mode)
	echo What repo would you like to, enter nothing to exit
	read chosenRepo

fi

#checks to see if the the second parameter was empty
if [ "$2" = "" ]
then

	#if there was no input at all
	if [ $chosenRepo = "" ]
	then

		#Outputs an error for no input, and does nothing else
		echo No input was entered, so the program will now end

 	else

		#Opens the file entered
		sudo git clone git@github.com:KallumP/$chosenRepo.git
	fi

else

  #lets the user know that more than one parameter should not be entered
  echo You cannot enter more than one parameter with this program
  echo To try again, please rewrite the command, but with only one parameter

fi
