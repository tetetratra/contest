# @param {String[]} words
# @param {String} pref
# @return {Integer}
def prefix_count(words, pref)
  words.select{|w| w.start_with?(pref) }.size
end

words = ["pay","attention","practice","attend"]
pref = "at"
p prefix_count(words, pref)


