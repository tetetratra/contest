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


cat << EOS >> a/a.rb
a, b, c = gets.split.map &:to_i

n = gets.to_i
s = gets.split(//)

arr = []
while g = gets
  arr << g.split.map(&:to_i)
end
EOS


cat << EOS >> b/b.rb
a, b, c = gets.split.map &:to_i

n = gets.to_i
s = gets.split(//)

arr = []
while g = gets
  arr << g.split.map(&:to_i)
end
EOS


cat << EOS >> c/c.rb
a, b, c = gets.split.map &:to_i

n = gets.to_i
s = gets.split(//)

arr = []
while g = gets
  arr << g.split.map(&:to_i)
end
EOS


cat << EOS >> d/d.rb
a, b, c = gets.split.map &:to_i

n = gets.to_i
s = gets.split(//)

arr = []
while g = gets
  arr << g.split.map(&:to_i)
end
EOS


echo "SET UP OK!!"
