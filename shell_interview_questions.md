Absolutely! Here’s a fully **ready-to-paste Markdown version** of your 50 shell scripting interview questions with answers and code blocks. You can copy this directly into a file like `shell_interview_questions.md` and push it to GitHub.

---

````markdown
# 50 Important Shell Scripting Interview Questions and Answers

---

## **1–10: Basics**

**1. What is a shell script?**  
A shell script is a text file containing shell commands executed sequentially.

**2. How do you make a script executable?**  
```bash
chmod +x script.sh
./script.sh
````

**3. What is the difference between `sh` and `bash`?**

* `sh` is the original Bourne shell.
* `bash` (Bourne Again Shell) has more features like arrays, arithmetic, and functions.

**4. How do you pass arguments to a script?**

```bash
#!/bin/bash
echo "First argument: $1"
echo "Second argument: $2"
```

**5. How to check if a file exists in shell?**

```bash
if [ -f "file.txt" ]; then
    echo "File exists"
fi
```

**6. How to check if a directory exists?**

```bash
if [ -d "/tmp" ]; then
    echo "Directory exists"
fi
```

**7. How to get current date in shell?**

```bash
date +"%Y-%m-%d %H:%M:%S"
```

**8. How to read user input?**

```bash
read -p "Enter your name: " name
echo "Hello $name"
```

**9. How to find length of a string?**

```bash
str="Hello"
echo ${#str}   # Output: 5
```

**10. How to check if a variable is empty?**

```bash
if [ -z "$var" ]; then
  echo "Variable is empty"
fi
```

---

## **11–20: Loops & Conditional**

**11. For loop example**

```bash
for i in {1..5}; do
  echo "Number $i"
done
```

**12. While loop example**

```bash
count=1
while [ $count -le 5 ]; do
  echo $count
  ((count++))
done
```

**13. Until loop example**

```bash
count=1
until [ $count -gt 5 ]; do
  echo $count
  ((count++))
done
```

**14. If-else example**

```bash
num=10
if [ $num -gt 5 ]; then
    echo "Greater than 5"
else
    echo "Less or equal 5"
fi
```

**15. Nested if example**

```bash
num=10
if [ $num -gt 0 ]; then
    if [ $num -lt 20 ]; then
        echo "Between 1 and 19"
    fi
fi
```

**16. Case statement example**

```bash
read -p "Enter a color: " color
case $color in
    red) echo "Apple";;
    green) echo "Leaf";;
    *) echo "Unknown color";;
esac
```

**17. Break in loops**

```bash
for i in {1..5}; do
  if [ $i -eq 3 ]; then
    break
  fi
  echo $i
done
```

**18. Continue in loops**

```bash
for i in {1..5}; do
  if [ $i -eq 3 ]; then
    continue
  fi
  echo $i
done
```

**19. Using arithmetic in shell**

```bash
a=5
b=3
echo $((a + b))
```

**20. Using `expr` for arithmetic**

```bash
a=5
b=3
expr $a + $b
```

---

## **21–30: Functions & Arrays**

**21. How to define a function**

```bash
myfunc() {
  echo "Hello Function"
}
myfunc
```

**22. Function with arguments**

```bash
greet() {
  echo "Hello $1"
}
greet "Guru"
```

**23. Return value from function**

```bash
add() {
  return $(($1 + $2))
}
add 2 3
echo $?   # Output: 5
```

**24. Array declaration**

```bash
arr=(1 2 3 4 5)
echo ${arr[0]}   # Output: 1
```

**25. Array length**

```bash
echo ${#arr[@]}   # Output: 5
```

**26. Loop through array**

```bash
for i in "${arr[@]}"; do
  echo $i
done
```

**27. Associative array**

```bash
declare -A fruits
fruits[apple]="red"
fruits[banana]="yellow"
echo ${fruits[apple]}
```

**28. Check if element exists in array**

```bash
if [[ " ${arr[@]} " =~ " 3 " ]]; then
  echo "Exists"
fi
```

**29. Print array indices**

```bash
echo ${!arr[@]}
```

**30. Add element to array**

```bash
arr+=(6)
```

---

## **31–40: Files & Strings**

**31. Read file line by line**

```bash
while IFS= read -r line; do
  echo $line
done < file.txt
```

**32. Count lines in file**

```bash
wc -l file.txt
```

**33. Search string in file**

```bash
grep "search_text" file.txt
```

**34. Replace string in file (inline)**

```bash
sed -i 's/old/new/g' file.txt
```

**35. Print first 5 lines**

```bash
head -n 5 file.txt
```

**36. Print last 5 lines**

```bash
tail -n 5 file.txt
```

**37. String slicing**

```bash
str="HelloWorld"
echo ${str:0:5}   # Output: Hello
```

**38. Convert string to uppercase/lowercase**

```bash
str="hello"
echo ${str^^}  # HELLO
echo ${str,,}  # hello
```

**39. Concatenate strings**

```bash
a="Hello"
b="World"
echo "$a $b"
```

**40. Find word count in file**

```bash
wc -w file.txt
```

---

## **41–50: Real-Time / Practical**

**41. Check if process is running**

```bash
if pgrep nginx > /dev/null; then
  echo "Running"
else
  echo "Not running"
fi
```

**42. Kill a process by name**

```bash
pkill nginx
```

**43. Disk usage of directory**

```bash
du -sh /var/log
```

**44. Check available disk space**

```bash
df -h
```

**45. Backup file with date**

```bash
cp file.txt file_$(date +%F).bak
```

**46. Cron job example**

```bash
# Run script.sh every day at 2 AM
0 2 * * * /home/user/script.sh
```

**47. Redirect output to file**

```bash
echo "Hello" > output.txt   # overwrite
echo "World" >> output.txt  # append
```

**48. Pipe and filter example**

```bash
ps aux | grep nginx
```

**49. Check last logged in users**

```bash
who
```

**50. Find large files (>100MB)**

```bash
find / -type f -size +100M
```

```

---

If you want, I can **also make a Git-ready version with a table of contents** at the top so it looks professional on your GitHub README style.  

Do you want me to do that?
```
