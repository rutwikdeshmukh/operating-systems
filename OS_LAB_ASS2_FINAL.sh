echo " #File Management System# "
 #File Management System#

 echo " Operating in current dir : "
 Operating in current dir :


 i=1
 while [ $i = 1 ]
    do
 echo "                     "
 echo "1) New file"
 echo "2) New Directory"
 echo "3) Search a File"
 echo "4) Search a Directory"
 echo "5) Delete Files"
 echo "6) Rename File"
 echo "7) Show Contents of Directory"
 echo "8) Back to Main Directory"
 echo "9) Enter into Sub-Directory"
 echo "10) Exit"
 echo "Enter Choice"
 echo "                     "
 read choice

 case $choice in
 1)
 echo "Enter File name to be Created : "
 echo "                     "
 read newfile
 if [ -f $newfile ]
        then
    echo " File already Exists ! "
 else
    touch $newfile
    echo "File creation Successfull."
    fi;;

    2)
 echo "Enter new Directory name : "
 read newdirec
 if [ -d $newdirec ]
        then
    echo "Directory already exists !"
 else
    mkdir $newdirec
    echo "Directory created successfully."
    fi;;

 3)
 echo "Enter file name to search for : "
 read searchfile
 if [ -f $searchfile ]
        then
    echo "File exist in this directory"
 else
    echo "No such file exists in this directory"
 fi;;

 4)
 echo "Enter directory name to search for :  "
 read searchdirec
 if [ -d $searchdirec ]
        then
    echo "Directory found !"
 else
    echo "No such directory exists"
 fi;;

 5)
 echo "Enter the name of the file to delete : "
 read dfile
 if [ -f $dfile ]
        then
    rm $dfile
    echo "File deleted successfully"
 else
    echo "File doesn't exist"
 fi;;

 6)
 echo "Enter name of file to be rename : "
 read ofile
 if [ -f $ofile ]
        then
    echo "Enter new file name : "
       read nfile
    mv $ofile $nfile
        echo "The file is successfully renamed"
 else
        echo "No such file exists"
 fi;;

 7)
 ls;;

 8)
 cd ..
 echo "Main Directory is here."
 echo "                     "
 echo "Enter name of the directory - "
 read dname
 if [ -d $dname ]
        then
    cd $dname
       echo "Switched to $dname"
 else
         echo "Directory doesn't exist."
 fi;;

 9)
 echo "Enter name of the directory - "
 read dnam
 if [ -d $dnam ]
        then
    cd $dnam
       echo "Switched to $dnam"
 else
         echo "Directory doesn't exist."
 fi;;

 10)
 echo "Exit Success. "
 i=0
 ;;

 esac

 done