#! /usr/bin/fish
function fish_greeting
	set STOUSED (df -h /home | tail -n 1 | awk '{print $3}')
  	set STOTOT (df -h /home | tail -n 1 | awk '{print $2}')
  	set STOPER (df -h /home | tail -n 1 | awk '{print $5}')
  
 	set STRUSED (df -h / | tail -n 1 | awk '{print $3}')
  	set STRTOT (df -h  / | tail -n 1 | awk '{print $2}')
  	set STRPER (df -h  / | tail -n 1 | awk '{print $5}')
  
  	echo -e "\e[1;40m\e[1;34m/home ==>\e[1;36m $STOUSED/\e[1;91m$STOTOT :\e[1;94m $STOPER used \e[0m"
  	echo -e "\e[1;40m\e[1;34m/root ==>\e[1;36m $STRUSED/\e[1;91m$STRTOT :\e[1;94m $STRPER used \e[0m"
end

