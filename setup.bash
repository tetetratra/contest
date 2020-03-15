cd ~/Programming/contest
mkdir $1 || exit
cd $1

mkdir a
mkdir b
mkdir c
mkdir d
mkdir e

touch a/a.rb
touch b/b.rb
touch c/c.rb
touch d/d.rb
touch e/e.rb

echo "# a" > a/a.rb
echo "# b" > b/b.rb
echo "# c" > c/c.rb
echo "# d" > d/d.rb
echo "# e" > e/e.rb


cat ~/Programming/contest/library/main.rb | tee -a a/a.rb | tee -a b/b.rb | tee -a c/c.rb | tee -a d/d.rb >> e/e.rb

echo "SET UP OK!!"
