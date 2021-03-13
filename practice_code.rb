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

# 1-100までの和
# 模範回答
# n   = 1
# sum = 0
# while n < 101
#   sum += n
#   n += 1
# end
# puts(sum)

# #もしくは

# n   = 0
# sum = 0
# while n < 101
#   if n > 0
#     sum += n
#   end
#   n += 1
# end
# puts(sum)

#楽しいRubyp.262練習問題
#1.摂氏温度を華氏温度に変換するcels_to_fahrを定義せよ。摂氏温度と華氏温度の変換は以下のようになる。
#華氏＝摂氏×９÷５＋３２
# def cels_to_fahr(c)
#   f = c*9/5+32
#   puts "#{c} degree Celsius = #{f.to_i} degree Fahrenheit."
# end
#解答例
# def cels2fahr(cels)
#   return cels * 9.0 / 5.0 + 32.0
# end
# 解説：９と５はそれぞれ9.0や5.0にしています。こうしないと、celsが整数だった場合、正しく計算されません(5で割るところの結果がIntegerになってしまいます)
  

#2. 1.とは逆に華氏温度を摂氏温度に変換するメソッドfahrs_to_cellを定義せよ。
#また、摂氏一度から摂氏１００度まで一度刻みに華氏温度との対応を出力せよ。
# def fahr_to_cells(f)
#   c = (f-32) * 5 / 9
#   puts "#{f} degree Fahrenheit is #{c.to_i} degree Celsius."
#   return c.to_i
#   end
  
#   1.upto(100) do |i|
#     cels_to_fahr(i)
#   end

#解答例
# def fahr2cels(fahr)
#   return (fahr.to_f - 32) * 5.0 / 9.0
# end
#解説：(1)の逆の計算を定義します。 「+」と「*」の優先順位の違いから括弧が必要なことに注意してください。
# 1.upto(100) do |i|
#   print i, " ", fahr2cels(i), "\n"
# end
#解説：華氏を1度から100度まで変えるには、uptoメソッドを使います。

#3.サイコロを振って出た目（１〜６までのランダムな整数）を返すメソッドdiceを定義せよ。
# def dice(rand)
# end
# puts rand(1..6)
#解答例
# def dice
#   return Random.rand(6) + 1
# end
#解説：単に「Random.rand(6)」とした場合は、0から5の値が返るので結果に1を足します。

#4.１０個のサイコロを振って出た目の合計を返すメソッドdice10を定義せよ。
#解答例
# def dice
#   return Random.rand(6) + 1
# end

# def dice10
#   ret = 0
#   10.times do
#     ret += dice
#   end
#   ret
# end
#解説：単純にdice+dice+...と書いても可能ではありますが、やはりここは繰り返しを使うべきでしょう。

#整数numが素数であるかどうかを調べるprime?(num)を定義せよ。なお、素数とは「それ自身と１位外で割り切ることのできない数」です。一桁の整数のうち、素数となるのは「２、５、３、７」です。
# def prime?(num)
#   return false if num < 2
#   2.upto(Math.sqrt(num)) do |i|
#     if num % i == 0
#       return false
#     end
#   end
#   return true
# end

# 1.upto(10) do |n|
#   puts n if prime?(n)
# end
#解答例：まず、2より小さい数は素数でないとします。それ以上の数は、2からその数の平方根まで割り算を行って、すべての剰余が0でないことを確認します。