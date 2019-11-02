cd ~/contest
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

cat ~/contest/library/main.rb | tee b/b.rb | tee a/a.rb | tee c/c.rb | tee d/d.rb > e/e.rb

echo "SET UP OK!!"
