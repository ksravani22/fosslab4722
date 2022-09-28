echo "1.About your OS and version,release number,kernel version \n 2.Show all available shells \n 3.Show mouse setting \n 4.Show computer cpu informaton like processor type,speed etc \n 5.Show memory information \n 6.Show harddisk information like size of hard-disk,cache memory modeletc \n 7.File system (Mounted) \n 8.Keyboard setting"
echo "enter option"
read op
case $op in
     1)echo "OS and version,release number,kernel version"
     if [ -f/etc/os-release ]
     then
     echo "OS :"
     cat /etc/os-release
     else
     echo "enter valid option"
     fi
     ;;
     2)echo "all avaible shells"
     if [ -f/etc/shells ]
     then
     cat /etc/shells
     else
     echo "enter valid option"
     fi
     ;;
   3)echo "mouse setting"
   xinput -list-props "PixArt USB Optical Mouse"
   ;;
   4)echo "cpu information"
   if [ -f/proc/cpuinfo ]
   then
   cat /proc/cpuinfo
   else
   echo "enter valid option"
   fi
   ;;
  5)echo "memory information"
  if [ -f/proc/meminfo ]
  then
  cat /proc/meminfo
  else
  echo "enter valid information"
  fi
  ;;
   6)echo "hard disk information"
	echo "Driver :"
	if [ -f/proc/driver/rtc ]
	then
	cat /proc/driver/rtc
	else
	echo "enter valid option"
	fi
	;; 
	7)echo "file system"
	if [ -f/proc/mounts ]
	then
	cat /proc/mounts
	else
	echo "enter valid option"
	fi
	;;
	8.)echo "Keyboard setting"
	xinput -list-proc "Dell Dell USB Entey Keyboard"
	;;
	*)echo "enter valid option only"
	;;
esac

