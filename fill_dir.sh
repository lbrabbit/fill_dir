# Recreation of 3.bat in POSIX compatible batch file
# Not finished

mkdir $1
#echo $0 $1
fname="$( awk 'BEGIN{print substr(ARGV[1],3)}' $0 )"
#echo $fname
cp $fname $1
cd $1
./$fname $1
