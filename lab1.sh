#LAB1
#1
mkdir lab1
cd lab1
touch file.txt file1.txt file2.txt file3.txt
mkdir dir1 dir2


#2
ls *.txt 
ls * .txt 


#3
ls f???.txt


#4
ls file[0-9]*.txt


#5
ls *[a-z0-1].txt


#6
cp /etc/passwd lab1/


#7
mv lab1/passwd lab1/new
mv lab1/new lab1/dir1/
mv lab1/dir1/new lab1/dir2/

#8
mv ./dir2 ./dir3
mv ./dir3 ./dir1/


#9
mv ./dir1/new ./


#10
rm -r lab1

