#===============================================================================
#
#          FILE: planB_house_dothrakhi_hw3.awk
# 
#         USAGE: 
# 
#   DESCRIPTION: 
# 
#        AUTHOR: Gisela Chodos
#  ORGANIZATION: 
#       CREATED:
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error


#!/usr/bin/awk -f

#BEGIN { FS=",";}
{
	FS = ",";
	year = strtonum(substr($4,length($4)-3,4)); 

	if (year >= 1900)
	print $2", from "$4" to "$5;
}
