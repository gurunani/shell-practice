1. What is a shell script?
A shell script is a text file containing shell commands executed sequentially.

2. How do you make a script executable?

chmod +x script.sh
./script.sh


3. What is the difference between sh and bash?

sh is the original shell (Bourne shell)

bash (Bourne Again Shell) has more features (arrays, arithmetic, functions)

4. How do you pass arguments to a script?

#!/bin/bash
echo "First argument: $1"
echo "Second argument: $2"


5. How to check if a file exists in shell?

if [ -f "file.txt" ]; then
    echo "File exists"
fi


6. How to check if a directory exists?

if [ -d "/tmp" ]; then
    echo "Directory exists"
fi


7. How to get current date in shell?

date +"%Y-%m-%d %H:%M:%S"


8. How to read user input?

read -p "Enter your name: " name
echo "Hello $name"


9. How to find length of a string?

str="Hello"
echo ${#str}   # Output: 5


10. How to check if a variable is empty?

if [ -z "$var" ]; then
  echo "Variable is empty"
fi

11–20: Loops & Conditional

11. For loop example

for i in {1..5}; do
  echo "Number $i"
done


12. While loop example

count=1
while [ $count -le 5 ]; do
  echo $count
  ((count++))
done


13. Until loop example

count=1
until [ $count -gt 5 ]; do
  echo $count
  ((count++))
done


14. If-else example

num=10
if [ $num -gt 5 ]; then
    echo "Greater than 5"
else
    echo "Less or equal 5"
fi


15. Nested if example

num=10
if [ $num -gt 0 ]; then
    if [ $num -lt 20 ]; then
        echo "Between 1 and 19"
    fi
fi


16. Case statement example

read -p "Enter a color: " color
case $color in
    red) echo "Apple";;
    green) echo "Leaf";;
    *) echo "Unknown color";;
esac


17. Break in loops

for i in {1..5}; do
  if [ $i -eq 3 ]; then
    break
  fi
  echo $i
done


18. Continue in loops

for i in {1..5}; do
  if [ $i -eq 3 ]; then
    continue
  fi
  echo $i
done


19. Using arithmetic in shell

a=5
b=3
echo $((a + b))


20. Using expr for arithmetic

a=5
b=3
expr $a + $b

21–30: Functions & Arrays

21. How to define a function

myfunc() {
  echo "Hello Function"
}
myfunc


22. Function with arguments

greet() {
  echo "Hello $1"
}
greet "Guru"


23. Return value from function

add() {
  return $(($1 + $2))
}
add 2 3
echo $?   # Output: 5


24. Array declaration

arr=(1 2 3 4 5)
echo ${arr[0]}   # Output: 1


25. Array length

echo ${#arr[@]}   # Output: 5


26. Loop through array

for i in "${arr[@]}"; do
  echo $i
done


27. Associative array

declare -A fruits
fruits[apple]="red"
fruits[banana]="yellow"
echo ${fruits[apple]}


28. Check if element exists in array

if [[ " ${arr[@]} " =~ " 3 " ]]; then
  echo "Exists"
fi


29. Print array indices

echo ${!arr[@]}


30. Add element to array

arr+=(6)

31–40: Files & Strings

31. Read file line by line

while IFS= read -r line; do
  echo $line
done < file.txt


32. Count lines in file

wc -l file.txt


33. Search string in file

grep "search_text" file.txt


34. Replace string in file (inline)

sed -i 's/old/new/g' file.txt


35. Print first 5 lines

head -n 5 file.txt


36. Print last 5 lines

tail -n 5 file.txt


37. String slicing

str="HelloWorld"
echo ${str:0:5}   # Output: Hello


38. Convert string to uppercase/lowercase

str="hello"
echo ${str^^}  # HELLO
echo ${str,,}  # hello


39. Concatenate strings

a="Hello"
b="World"
echo "$a $b"


40. Find word count in file

wc -w file.txt

41–50: Real-Time / Practical Questions

41. Check if process is running

if pgrep nginx > /dev/null; then
  echo "Running"
else
  echo "Not running"
fi


42. Kill a process by name

pkill nginx


43. Disk usage of directory

du -sh /var/log


44. Check available disk space

df -h


45. Backup file with date

cp file.txt file_$(date +%F).bak


46. Cron job example

# Run script.sh every day at 2 AM
0 2 * * * /home/user/script.sh


47. Redirect output to file

echo "Hello" > output.txt   # overwrite
echo "World" >> output.txt  # append


48. Pipe and filter example

ps aux | grep nginx


49. Check last logged in users

who


50. Find large files (>100MB)

find / -type f -size +100M
