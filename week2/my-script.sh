echo "Please enter the name of folder, you want to create: ";
read FOLDER_NAME;
if [ ${#FOLDER_NAME} != 0 ]; then
	echo "You entered:" $FOLDER_NAME;
else
	USER_NAME="Default";
fi

echo "Your directory name will be:" $FOLDER_NAME;

mkdir $FOLDER_NAME;

ls;

cd $FOLDER_NAME;

FILE_NAME="watch_list.txt";
touch $FILE_NAME;
INDEX=0;
while :
do
	echo "Enter name of the film, you want to add to Watch List";
	echo '[end]  - to finish adding films';
	echo '[move] - if you want to move Watch List to folder Watched';
	echo '[copy] - if you want to move Watch List to folder Watched';

	read FILM_NAME;

	case $FILM_NAME in
		end)
		echo "End adding films to WatchList";
		break;
		;;
		move)
		mkdir Watched;
		mv $FILE_NAME Watched;
		echo $FILE_NAME "moved to folder Watched"
		INDEX=0;
		;;
		copy)
		mkdir Watched;
		cp $FILE_NAME Watched;
		echo $FILE_NAME "copied to folder Watched"
		INDEX=0;
		;;
		*)
		if [ $INDEX == 0 ]; then
			echo "|   WatchList   |" > $FILE_NAME;
		fi
		INDEX=$((INDEX + 1));
		echo $INDEX")" $FILM_NAME";" >> $FILE_NAME;
		cat $FILE_NAME;
		;;
	esac
done;

ls;
cd ../
while :
do
	echo 'Please enter number of command bellow:'
	echo "[0] - remove folder and all file's inside"
	echo "[1] - keep folder and all files inside"

	read REMOVE;
	case $REMOVE in
		0)
		rm -r $FOLDER_NAME;
		echo $FOLDER_NAME" -FOLDER  REMOVED";
		break;
		;;
		1)
		echo $FOLDER_NAME" - FOLDER SAVED";
		break;
		;;
		*)
		echo "Sorry no such command";
		;;
	esac
done
ls;
