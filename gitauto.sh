find . -name ".DS*"
echo -e "\n----- \".DS*\" files deleted -----\n"
find . -name ".DS*" -delete


git add .
git status
echo -e "\n----- git push? (y/n) -----\n"
read ans
echo -e "\n"
if [ ${ans} == "y" ]
then
	current_time=$(date "+%Y.%m.%d-%H.%M.%S")
	git commit -m "updated - $current_time"
	git push
else
	echo "not yet?"
fi
