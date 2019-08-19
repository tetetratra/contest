cd ~/programing/contest/atcoder
mkdir $1 || exit
cd $1

mkdir a
mkdir b
mkdir c
mkdir d

touch a/a.rb
touch a/1
touch a/2
touch a/3

touch b/b.rb
touch b/1
touch b/2
touch b/3

touch c/c.rb
touch c/1
touch c/2
touch c/3

touch d/d.rb
touch d/1
touch d/2
touch d/3


cat ~/programing/contest/library.rb | tee b/b.rb | tee a/a.rb | tee c/c.rb > d/d.rb

echo "SET UP OK!!"
