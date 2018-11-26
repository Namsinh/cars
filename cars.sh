#! /bin/bash
#cars.sh
#Monique Namsinh

while true; do
echo "1)Add a car"
echo "2)List the cars in the inventory file"
echo "3)Quit the program"
echo
echo "Enter your choice, or 3 to exit: "
read CHOICE
echo

case "$CHOICE" in
"1")
	echo "Enter the year:"
	read YEAR
	echo "Enter the make:"
	read MAKE
	echo "Enter the model:"
	read MODEL
	
	echo "$YEAR:$MAKE:$MODEL" >> My_old_cars;;

"2") 	sort My_old_cars
	echo "($My_old_cars)";;

"3")	echo "OK, goodbye!"
	break;;
* )	echo "Invalid choice, ('$CHOICE' given)"
	break;; 
esac

done
