#signal = gets.chomp#(chompは末尾の改行を削除する処理。)
#(最後の文字列の後ろに改行コードが含まれると、意図した処理が動作しない。)
#case signal
#when "red"
  #puts "stop!"
#when "yellow"
  #puts "caution!"
#when "blue", "green"  
  #puts "go!"
#else 
  #puts "wrong signal"
#end
#----------------------------------------
#i = 0

#10.times do |i|
  #puts "#{i}: hello"
#end

#上記と同じ意味。一列しかない時などに使う

#10.times { |i| puts "#{i}: hello" }
#----------------------------------------

#for
#for i in 15..20 do
  #puts i
#end

#for color in ["red", "blue"] do
  #p color
#end

#for name, score in {taguchi:200, fkoji:400} do
  #puts "#{name}: #{score}"
#end

#each
#(15..20) .each do |i|
# p i
#end

#["red", "blue"] .each do |color|
  #p color
#end

#{taguchi:200, fkoji:400} .each do |name, score|
  #puts "#{name}: #{score}"
#end

#10.times do |i|
  #if i == 7 then
    #break (0~6まで表示される)
    #next  (0~9まで表示される)
    #next
  #end
  #p i
#end
#-----------------------------------------
#メソッド
#def sayHi (name = "tom") #引数
  #puts "hi!#{name}"
#end

# sayHi("inoue")
# sayHi "inoue"
# sayHi

#数当てゲーム
# answer = rand(10) + 1  #（answer がランダムに決まるよう設定）
# count = 0

# loop do #正解するまで何度も挑戦できるようにする
#   print "Your guess? "
#   guess = gets.to_i
#   #count = count + 1
#   count += 1
  
#   if answer == guess
#     puts "Bingo! It took #{count} guesses!"
#     break#正解がでたら終わりにしたいので
#   elsif answer > guess
#     puts "Bigger!"
#   else
#     puts "Smaller!"
#   end
# end

#hello ruby レッスンの演習
#私の回答
# puts "foo" 
# puts "bar" 
# puts "baz"
#模範回答
#puts "foo\nbar\nbaz"