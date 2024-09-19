#!/bin/zsh

showuptime(){
    up=$(uptime -p | cut -c4-)
    since=$(uptime -s)

    date_part=$(echo $since | awk '{print $1}')
    time_part=$(echo $since | awk '{print $2}')

    formatted_since="${time_part} ${date_part}"
    
    
    # Colors
    color_green="\e[32m"
    color_red="\e[31m"
    color_purple="\e[35m"
    color_reset="\e[0m"
    
    box_color=$color_purple

    # Maximum line width for padding, change it depending of your box alignment
    box_width=97

    # Calculate the necessary padding for the "uptime" line
    colored_up=${color_red}${up}${color_reset}
    uptime_line="You've been looking at the terminal for ${colored_up} weirdo"
    padding_up=$(($box_width - ${#uptime_line} ))  


    # Calculate the necessary padding for the "up since" line
    colored_formatted_since=${color_green}${formatted_since}${color_reset}
    since_line="The system is up since : ${colored_formatted_since}"
    padding_since=$(($box_width - ${#since_line} ))  # Adjust for borders
    
    side_border=${box_color}┃${color_reset} #to increase readability
    
    upper_straight_border=${box_color}┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓${color_reset}
    
    lower_straight_border=${box_color}┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛${color_reset}
    
    echo  ${upper_straight_border}
    printf "$side_border${uptime_line}%${padding_up}s${side_border}\n" 
    printf "$side_border${since_line}%${padding_since}s$side_border\n" 
    echo  ${lower_straight_border}
}

showuptime

