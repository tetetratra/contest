cd ~/contest
mkdir $1 || exit
cd $1

mkdir a
mkdir b
mkdir c
mkdir d

touch a/a.rb
touch b/b.rb
touch c/c.rb
touch d/d.rb

cat ~/contest/library/main.rb | tee b/b.rb | tee a/a.rb | tee c/c.rb > d/d.rb

echo "SET UP OK!!"
