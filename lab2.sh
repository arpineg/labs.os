#LAB2

#1
cat > file1 
cat file1 
cat < file1 


#2
cat > file1.txt
cat > file2.txt
cat > file3.txt
cat file1.txt file2.txt file3.txt > Final.txt

#3
ls ./*.txt | wc -l


#4
cat file1.txt file2.txt file3.txt | sort > sorted.txt


#5
ls -S ./ | head -n 15

#6
ls ./ > ls.txt


#7
echo "secret text" | tr 'a-zA-Z' 'n-za-mN-ZA-M'
echo "frperg grkg" | tr 'a-zA-Z' 'n-za-mN-ZA-M'


#8
echo "Student’s home directory is {home_dir}." > home.txt
sed 's/{home_dir}/\/home\/student/' home.txt > home_modified.txt


#9
echo "Line 1" > file4.txt
echo "Line 2" >> file4.txt
echo "Line 3" >> file4.txt
echo "Line 4" >> file4.txt
echo "Line 5" >> file4.txt
sed -n '2p;4p' file4.txt


#10
sed -i '2d;4d' file4_modified.txt
