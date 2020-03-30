#!/bin/bash
# Student Name  : Aaron Ng Wee Xuan
# Student Number: 10518970

#print rectangle.txt and send output to sed
#substitute any white spaces to ','
#substitute Rec into Name: Rec as per assignment requirements
#substitute first comma into Height
#substitute second comma into Width
#substitute third comma and the area with it into colour
#thereby removing the area itself
cat rectangle.txt | sed 's/ /,/g' | sed 's/Rec/Name: Rec/' 
| sed 's/,/ Height:/' | sed 's/,/ Width:/' 
| sed 's/,[0-9]*,/ Colour: /'



