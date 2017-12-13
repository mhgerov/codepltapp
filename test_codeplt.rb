require_relative 'codeplt'

x = Easy.new

puts "----------Easy #1----------"
puts x.firstLastLetter("Test 123 rar dinosaur baB") == 3

puts "----------Easy #2----------"
puts x.dogYears(2000) == 119

puts "----------Easy #3----------"
puts x.colorCounter("Blue ale melon GrAy red") == 3

puts "----------Easy #4----------"
puts x.reverseMax(15,42) == 15 

y = Medium.new

puts "----------Medium #1----------"
puts y.search(5,[1,2,3,4,5]) == 4
puts y.search(6,[1,2,3,4,5]) == -1

puts "----------Medium #2----------"
puts y.insert(-1,[1,2,4,5,6]) == 0
puts y.insert(1,[1,2,4,5,6]) == 0
puts y.insert(3,[1,2,4,5,6]) == 2
puts y.insert(5,[1,2,4,5,6]) == 3
puts y.insert(7,[1,2,4,5,6]) == 5

puts "----------Medium #3----------"
puts y.wordSort(['bar','foo','fun','cool','of','is','as']) == \
    ['as','is','of','bar','foo','fun','cool']

z = Hard.new

puts "----------Hard #1----------"
puts z.sort([5,1,4,2,3]) == [1,2,3,4,5]

puts "----------Hard #2----------"
puts z.charCount("pickles: cheese, moose.") == \
    Hash['p',1,'i',1,'c',2,'k',1,'l',1,'e',5,'s',3,'h',1,'m',1,'o',2]
