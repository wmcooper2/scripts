# for universal testing
alias t="./Test"

# universal, run main program in cwd
alias run="./run"

#pathname variables
GH="${HOME}/Programming/Github/"
PRO="${HOME}/Programming/"

# for homebrew
export PATH="/usr/local/bin:${PATH}"

# take notes anywhere from CLI
alias note="python3 ${GH}notetaker/src/notetaker.py"

#saving original PS1
PS1="$"
export PS1

# for raspberry-pi cluster
pi1="pi@192.168.1.11"
pi2="pi@192.168.1.12"
pi3="pi@192.168.1.13"
pi4="pi@192.168.1.14"
pi5="pi@192.168.1.33"
alias sshpi1="ssh ${pi1}"
alias sshpi2="ssh ${pi2}"
alias sshpi3="ssh ${pi3}"
alias sshpi4="ssh ${pi4}" 
alias sshpi5="ssh ${pi5}"

# convenience commands
alias shuryo="sudo shutdown -h now"
alias python="python3.7"
alias x="clear"
alias rr="resize -s 43 80"
alias bb="resize -s 43 160"

# pipenv, mac os ValueError workaround
export LC_ALL="en_US.UTF-8"
export LANG="en_US.UTF-8"

# quick dir changes for PROJECTS
#alias scrapedir="cd ~/Programming/Python/webscraping/billboardtop100/src/"
alias bill="cd ${GH}billboardtop100/"
alias gh="cd ${GH}"
alias gr="cd ${GH}graphicsbook/"
alias j="cd ${GH}jlpt/src/"
alias game="cd ${GH}games/marioquiz/src/"
alias pro="cd ${PRO}"
alias play="cd ${PRO}Playgrounds/"
alias rpi="cd ${GH}raspberrypicluster/src/"
alias scrape="cd ${GH}lyricscraping/src/; python3 scrapelyrics.py"
alias tea="cd ${GH}TotalEnglishAssistant/src/"
alias train="cd ${GH}djangotrains/src/"

# listing styles
alias al="ls -aAPG"
alias el="clear; ls -1APG"
alias pel="clear; pwd"

# openCV picture collection from camera box setup 
alias transferpics="scp -r ${pi5}:/home/pi/picturecollector/webcam ${GH}/picturecollector/pictures"

