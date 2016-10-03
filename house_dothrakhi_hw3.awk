#!/usr/bin/awk -f

#BEGIN { FS=",";}
{
	FS = ",";
	year = strtonum(substr($4,length($4)-3,4)); 

	if (year >= 1900)
	print $2", from "$4" to "$5;
}
