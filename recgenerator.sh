#!/bin/bash
# Student Name  : Aaron Ng Wee Xuan
# Student Number: 10518970

#calculate area of rectangle
areaRectangle()
{
    randomGenerator
    area=$(( $base * $height ))
}

randomGenerator()
{
    #getting random numbers to form base and height 
    #of rectangle from 1-20
    base=$(($RANDOM%20+1))
    height=$(($RANDOM%20+1))
}

#assign random colours to rectangles
randomColour()
{
    #list colours into arrays
    arr[0]="Red"
    arr[1]="Orange"
    arr[2]="Yellow"
    arr[3]="Green"
    arr[4]="Blue"
    arr[5]="Indigo"
    arr[6]="Violet"
    #set random number from 0-6
    rand=$(($RANDOM%7))
    #select colour based on random number generated
    colour=${arr[$rand]}
}

main()
{
    #set interger to 0 for loop
    i=0
    #continue loop until i reaches 50
    while (( i < 51 )); do
    #calculate area
    areaRectangle
    #name the rectangle
    name=Rec$i
    #assign a colour
    randomColour
    #save the details into rectangle.txt
    echo "$name,$height,$base,$area,$colour" >> rectangle.txt
    #increase count of i
    let i++
    done
}

main