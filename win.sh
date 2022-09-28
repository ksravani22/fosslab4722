#SHELL SCRIPT TO SHOW VARIOU SYSTEM CONFIGURATION
while(1)
do
echo "\n1:-currently logged user and his logname \n2:- your current shell \n3:-your home directory \n4:-Your operating system type \n5 Your current path seting\n6:-Your current working dirctory\n7:- Show Currently logged number of users"
echo "choose option from  1 to 7"
read op
case $op in
   1)echo "current logged user is :-$USER"
   echo "logname:- $LOGNAME"
   ;;
   2)echo  "current shell:-  $SHELL"
   ;;
   3) echo  "home directory :- $HOME"
   ;;
   4)echo  " operating system type & it's and its version:- $cat  /proc/version"
   ;;
    5)echo "current path setting:- $PATH"
    ;;
     6)echo "your current working dirctory:- $PWD"
     ;;
     7)echo " Show Currently logged number of users:- $(who|wc -l)"
     ;;
     8) exit;;
     *) echo "Invalid option"
    ;;
esac
done
