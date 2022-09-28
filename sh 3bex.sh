#Shellscript to show various system configurations
echo "\n 1:currently logged user and his log name"
echo "\n 2:current shell"
echo "\n 3:home directory"
echo "\n 4:operating system type"
echo "\n 5:Current path settings"
echo "\n 6:current working Directory"
echo "\n 7:logged no.of users"
echo "\n choose option from 1 to 7"
read op
case $op in
	1) echo "currently logged user and his log name: $USER"
        echo " log name :  $LOGNAME"
             ;;
	2)echo "current shell:  $SHELL"
             ;;
          3)echo "home directory:  $HOME"
             ;;
          4)echo "operating system type: " cat /proc/version
             ;;
          5)echo "Current path settings: $PATH"
             ;;
          6)echo "current working Directory:  $PWD"
             ;;
          7)echo "logged no.of users: " $who |wc -l
             ;;
          8)exit;;
          *)echo "Wrong option"
             ;;
esac



