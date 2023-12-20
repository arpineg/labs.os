#!/bin/bash

#1
while true; do
	echo "Enter a number (0 to exit): "
	read -r num

	case $num in
	0)
		echo "Program terminated."
		break
		;;
	1)
		cp * ./
		echo "List of files copied to ./."
		;;
	2)
		count=$(ls ./*.txt | wc -l)
		echo "Number of text files in .: $count."
		;;
	3)
		pwd
		;;
	*)
		echo "Invalid number. Please enter 0, 1, 2, or 3."
		;;
	esac
done

#2
echo "Enter the month name: "
read -r month

case $month in
"January" | "March" | "May" | "July" | "August" | "October" | "December")
	echo "The month $month has 31 days."
	;;
"April" | "June" | "September" | "November")
	echo "The month $month has 30 days."
	;;
"February")
	echo "The month $month has 28 or 29 days depending on whether it's a leap year."
	;;
*)
	echo "Invalid month name."
	;;
esac

#3
while true; do
	echo "Enter the first number: "
	read -r num1

	echo "Enter the operation (+, -, *, /, **): "
	read -r operation

	echo "Enter the second number: "
	read -r num2

	case $operation in
	"+")
		result=$((num1 + num2))
		;;
	"-")
		result=$((num1 - num2))
		;;
	"*")
		result=$((num1 * num2))
		;;
	"/")
		result=$((num1 / num2))
		;;
	"**")
		result=$((num1 ** num2))
		;;
	*)
		echo "Invalid operation."
		continue
		;;
	esac

	echo "Result: $result"
done

#4
if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <filename>"
	exit 1
fi

filename="$1"

if [ -r "$filename" ]; then
	cat "$filename"
else
	echo "File does not exist or is not readable."
fi

#5
echo "Enter the first filename: "
read -r file1

echo "Enter the second filename: "
read -r file2

if [ -r "$file1" ]; then
	cat "$file1" >"$file2"
	echo "Content of the file successfully copied."
else
	echo "File $file1 does not exist or is not readable."
fi

#6
if [ "$#" -ne 2 ]; then
	echo "Usage: $0 <num1> <num2>"
	exit 1
fi

num1="$1"
num2="$2"

if ! [[ "$num1" =~ ^[0-9]+$ ]] || ! [[ "$num2" =~ ^[0-9]+$ ]]; then
	echo "Invalid input. Please enter valid numbers."
	exit 1
fi

sum=$((num1 + num2))
echo "Sum: $sum"

#7
count=1

while [ "$#" -gt 0 ]; do
	echo "Argument $count: $1"
	count=$((count + 1))
	shift
done

#8
for arg in "$@"; do
	echo "Argument: $arg"
done

#9
sum=0

for arg in "$@"; do
	if [[ "$arg" =~ ^[0-9]+$ ]]; then
		sum=$((sum + arg))
	else
		echo "Invalid input. Please enter valid numbers."
		exit 1
	fi
done

echo "Sum: $sum"

