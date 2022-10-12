while [ 1 ]
do
echo "1.os \n 2.shell info \n 3. mouse setting \n 4. cpu \n 5.memory \n 6.hard disk \n 7.file system \n 8.exit\n  "
echo "enter option" 
read op   
case $op in
1)echo "os and version,release number,kernel version"

echo "os:"
if [ -f /etc/os-release ]
then
cat /etc/os-release
fi
;;
2)echo "all available shells"
if [ -f /etc/shell]
then
cat /etc/shells
fi
;;
3)echo "mouse settings"
xinput --list 9
;;
4)echo "cpu information"
if [ -f /proc/cpuinfo ]
then
cat /proc/cpuinfo
fi
;;
5)echo "memory information " 
if [ -f /proc/meminfo]
then
 cat /proc/meminfo
fi
;;
6)echo "hard disk information"
echo "Model:`cat /proc/ide/hda/model`"
echo "Driver:`cat /proc/ide/hda/driver`"
echo -e "Cache size:`cat /proc/ide/hda/cache`"
;;
7)echo "file system"
cat /pro/mounts
 if which dialog > /dev/null
then
	dialog -- back title"linux software diaggnostics(LSD)shell script ver 1.0" --title
"press Up/Down keys to move "--textbox /tmp/info.tmp.01.$$$ 21 70 
else
	cat /tmp/info.tmp.01.$$$ |more
fi
	rm -f /tmp/info.tmp.01.$$$
;;
8)echo "exit option "
	exit;;
*) echo "invalid option "
esac
done
                                                                                         
