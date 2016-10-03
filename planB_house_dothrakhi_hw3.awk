<<<<<<< HEAD
#!/usr/bin/awk -f

#BEGIN { FS=",";}
{
	FS = ",";
	year = strtonum(substr($4,length($4)-3,4)); 

	if (year >= 1900)
	print $2", from "$4" to "$5;
}
=======
#!/bin/bash - 
#===============================================================================
#
#          FILE: awk.sh
# 
#         USAGE: ./awk.sh 
# 
#   DESCRIPTION: 
# 
#        AUTHOR: Matthew Smith (), matthewsmith4@mail.weber.edu
#  ORGANIZATION: 
#       CREATED: 09/29/2016 12:48
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error


>>>>>>> 9634863052c3959e3f2d4d2c516bf618b1b80a7d
