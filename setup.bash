cd ~/Programming/contest
mkdir $1 || exit
cd $1

mkdir a
mkdir b
mkdir c
mkdir d
mkdir e

touch a/main.rb
touch b/main.rb
touch c/main.rb
touch d/main.rb
touch e/main.rb

echo "# a" > a/a.rb
echo "# b" > b/b.rb
echo "# c" > c/c.rb
echo "# d" > d/d.rb
echo "# e" > e/e.rb

cat ~/Programming/contest/library/main.rb | tee -a a/main.rb | tee -a b/main.rb | tee -a c/main.rb | tee -a d/main.rb >> e/main.rb

echo "SET UP OK!!"
