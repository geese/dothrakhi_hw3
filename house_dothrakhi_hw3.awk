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

awk 'BEGIN { FS=","; }
	{ print $4 }' presidents.csv

exit 0
