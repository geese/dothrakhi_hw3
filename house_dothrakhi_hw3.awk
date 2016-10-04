#===============================================================================
#
#          FILE: house_dothrakhi_hw3.awk
# 
#         USAGE: 
# 
#   DESCRIPTION: 
# 
#        AUTHOR: Matthew Smith
#  ORGANIZATION: 
#       CREATED:
#      REVISION:  ---
#===============================================================================

#set -o nounset                              # Treat unset variables as an error

BEGIN { FS=","; }
{ 
	year = strtonum(substr($4,length($4)-3,4));
	if ( year >= 1900)
		print $2", from "$4" to "$5;
}

