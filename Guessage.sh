#!/bin/bash
# Student Name  : Aaron Ng Wee Xuan
# Student Number: 10518970

getRandomNo()
{
    #get random number from 1-83
    #life expectancy of Singapore
    num=$(($RANDOM%83+1))
}

guessAge()
{
    getRandomNo
    echo "Welcome to Guess My Age!"
    echo "########################"
    echo "Hint: The average life expectancy of Singaporeans is 83 years old!"
    echo "You have 5 tries!!"
    #set REPLY variable outside loop to initiate loop
    REPLY=0 
    #loop compares user input to random number
    #also test if any attempts left
    while [ "$REPLY" -ne "$num" -a $chance -gt 0 ];
    do
        read -p "Whats my age?: " 
        if [ "$REPLY" -eq "$num" ]; then
            echo "Correct!"
        elif [ "$REPLY" -lt "$num" ]; then
            echo "Higher!"
        elif [ "$REPLY" -gt "$num" ]; then
            echo "Lower!"
        fi
        (( chance-=1 )) #reduce one attempt every loop
        
    done

}

main()
{
    chance=5 #set attempt to 5
    guessAge #start guessing game
    if chance=0 ;
    then echo "Try again soon!"
    fi
}

main