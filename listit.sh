#/bin/bash
integer=0;
while [ $integer != $1 ] 
do
  for list in `ls -d1 */| cut -d '/' -f1`
    do
	    echo "$list" >> directories.list
  done
sed -i '1s~^~line one'\''s line\n~' directories.list;
cat  directories.list
integer=$((integer+1))
done
