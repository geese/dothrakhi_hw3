#!/bin/bash - 
#===============================================================================
#
#          FILE: house_dothrakhi_hw3.sh
# 
#         USAGE: ./house_dothrakhi_hw3.sh 
# 
#   DESCRIPTION: Use sed on a file, send it to awk, awk prints to an output file. 
# 
#        AUTHOR: GISELA CHODOS (), giselachodos@mail.weber.edu
#  ORGANIZATION: 
#       CREATED: 10/03/2016 13:16
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error


#function to call when user needs some guidance
displayHelp()
{
echo "usage ./house_dothrakhi_hw3.sh -s sedsrc -a awksrc -i inputFile"
}



#if the user typed --help as first parameter, display the usage message
if [[ $1 = --help ]]
then
	displayHelp
	exit 1
fi


#if the number of options plus arguments does not equal six, something's wrong
if [[ $# -lt 6 ]]
then
	echo "More arguments are needed"
	displayHelp
	exit 1
elif [[ $# -gt 6 ]]
then
	echo "Fewer arguments are needed"
	displayHelp
	exit 1
fi




#options are -s, -a, and -i.  Colons mean an argument should follow the option.  (s:)
while getopts ":s:a:i:" opt
do
	case $opt in
		\?)echo "Invalid option: -$OPTARG"  #\? means an option was entered, wrong letter
			displayHelp
			exit 1;;
		s)sedsrc=$OPTARG;;
		a)awksrc=$OPTARG;;
		i)dataInputFile=$OPTARG;;
	esac
done


#check that the argument to -i is a file that exists
if [[ -e $dataInputFile ]]
then
sed -f $sedsrc $dataInputFile | awk -f $awksrc > 20CenturyPresidents.txt
echo "Your output is saved in the file 20CenturyPresidents.txt"
else
	echo "The input file $dataInputFile does not exist."
	displayHelp
fi



exit 0
