#!/bin/bash

file="./IP_list.txt"
while IFS= read line
do
	#echo "$line"
curl http://api.db-ip.com/v2/free/$line/ipAddress && printf "|"
curl http://api.db-ip.com/v2/free/$line/stateProv && printf "|"
curl http://api.db-ip.com/v2/free/$line/city && printf "|"
#echo  -e "\t"
curl http://api.db-ip.com/v2/free/$line/countryName && echo  -e "\n"
done < "$file"

