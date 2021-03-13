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

#p.295 練習問題
#1. 1~100までの整数が昇順に並ぶ配列aを作りなさい。（a[0]は1、a[99]は100になる）
#私の回答
# arrays = (1..100)
# arrays.each do |a|
#   puts a
# end
#解答例
# a = (1..100).to_a

#2. 1.の配列の各要素を全て100倍した、新しい配列a2を作りなさい。（a2[0]は100になります）また、新しい配列を作成せずに、3の倍数以外の数を削除しなさい。
#私の回答
# a2 = (1..100)*3.to_a
#解答例
#普通にArray#collectを使えば、新しい配列が作れます。同じ配列をそのまま100倍したいときは、「!」がついたArray#collect!を使います。
# 配列を作成する
# a = (1..100).to_a
# 配列の全ての要素を100倍した値を含む新しい配列を作る
# a2 = a.collect{|i| i * 100 }
# p a2
# 配列の全ての要素を100倍する
# a.collect!{|i| i * 100 }
# p a

#3. 1. の配列から3の倍数だけ取り出した、新しい配列a3を作りなさい。（a3[0]は3、a3[2]は9になる）また、新しい配列を作成せずに、3の倍数以外の数を削除しなさい。
#私の回答
# a = (1..100).to_a
# a3 = a.collect{|i| i * 3 }
# p a3
# p a.slice! ()
# p a
#解答例
#条件に当てはまるものをとりのぞくには、Array#rejectを使います。
# 配列を作成する
# a = (1..100).to_a
# aryから3の倍数だけを取り出す
# a3 = a.reject{|i| i % 3 != 0 }
# p a3
# なお、条件に当てはまるものだけ返す、!が不要なselectというメソッドもあります
# a4 = a.select{|i| i % 3 == 0 }
# p a4
# aryから3の倍数以外の数を削除する
# a.reject!{|i| i % 3 != 0 }
# p a

#4. 1.の配列を逆順に並べ替えなさい
#私の回答
# a = (1..100).to_a
# p a.sort.reverse
#解答例
# 配列を作成する
# a = (1..100).to_a
# (a) Array#reverseを使う
# a2 = a.reverse
# p a2
# (b) Array#sortを使う
# a2 = ary.sort{|n1, n2| -(n1 <=> n2) }
# p a2
# (c) Array#sort_byを使う
# a2 = a.sort_by{|i| -i }
# p a2

#5. 1.の配列に含まれる整数の和を求めなさい
#私の回答
# a = (1..100).to_a
# a = 0
# n = 1
# while n <= 100   
#   a = a + n
#   n = n + 1
# end
# puts a
#解答例
# 配列を作成する
# a = (1..100).to_a
# (a) Array#eachで和を求める
# result = 0
# a.each{|i| result += i }
# p result
# (b) Array#injectで和を求める
# p a.inject(0){|memo, i| memo += i }

#6. 1から100の整数を含む配列aryから、1〜10、 11〜20、21〜30というように10個の要素を含む配列を10個取り出します。
#取り出した全ての配列を、順に別の配列resultに格納するとき、以下に当てはまる式を考えよ。
#解答例
# 配列を作成する
# ary = (1..100).to_a
# result = Array.new
# 10.times do |i|
#   result << ary[i*10, 10]
# end
# p result

#7.  数値からなる配列nums1とnums2に対して、それらの個々の要素を足し合わせた要素からなる配列を返すメソッドsum_arrayを定義せよ。
#解答例
#Array#eachでary1の各要素にループさせるのと同時に、インデックスを使ってary2の各要素にアクセスするのがポイントです。また、別解として、Array#zipというメソッドを使うと、２つの配列に対して同時に各要素を参照することができます。
# def sum_array(ary1, ary2)
#   result = Array.new
#   i = 0
#   ary1.each do |elem1|
#     result << elem1 + ary2[i]
#     i+=1
#   end
#   return result
# end

# Array#zipを使った別解
# def sum_array_zip(ary1, ary2)
#   result = Array.new
#   ary1.zip(ary2){|a, b| result << a + b }
#   return result
# end

# p sum_array([1, 2, 3], [4, 6, 8])

#p.324 練習問題
#1. "Ruby is an object oriented programming language"という文字列があります。この文字列に含まれる各単語を要素とする並列を作りなさい。
#私の回答
# str = "Ruby is an object oriented programming language"
# p str [0..46]
#解答例
# str = "Ruby is an object oriented programming language"
# ary = str.split
# p ary

#2. 1.の配列をアルファベット順にソートせよ。
#私の回答
# a = [Ruby is an object oriented programming language]
# a.sort!
# p a 
#解答例
#アルファベットだけの場合、引数なしのArray#sortでソートされます。この辺りは配列の復習にもなっています。
# str = "Ruby is an object oriented programming language"
# ary = str.split
# p ary.sort

#3. 2.の配列を大文字と小文字の区別をせずにアルファベット順にソートせよ。
#私の回答
#str = "Ruby is an object oriented programming language"
#解答例
#こちらではArray#sort_byを使って、引数の比較をしています。その際、String#downcaseで強制的に小文字にしてから比較するため、大文字小文字の区別がなくなります。
# str = "Ruby is an object oriented programming language"
# ary = str.split
# p ary.sort_by{|s| s.downcase }

#5. 1.の文字列に含まれる文字とその数を次のような形式で表示させよ。（空白文字が6つ、'R'が1つ、'a'が4つ、'b'が・・・・という意味です）
#解答例
#ハッシュを作成して、文字をキー、出現した回数を値として記録します。最後に文字をソートして回数個数のアスタリスクとともに出力します。
# str = "Ruby is an object oriented programming language"
# count = Hash.new
# str.each_char do |c|
#   count[c] = 0 unless count[c]
#   count[c] += 1
# end
# count.keys.sort.each do |c|
#   printf("'%s': %s\n", c, "*" * count[c])
# end

#6. "七千百二十三"といった、漢数字による1~9999の数の表現を、「7213」のような数値に変換するメソッドkan2numを定義してください。
#解答例
#この問題は応用問題でかなり難しいです。
#各桁の数字をString#gsub!で置き換えていきます。桁の切り出しには正規表現を駆使しています。
# def kan2num(string)
#   digit4 = digit3 = digit2 = digit1 = "0"

#   nstring = string.dup
#   nstring.gsub!(/一/, "1")
#   nstring.gsub!(/二/, "2")
#   nstring.gsub!(/三/, "3")
#   nstring.gsub!(/四/, "4")
#   nstring.gsub!(/五/, "5")
#   nstring.gsub!(/六/, "6")
#   nstring.gsub!(/七/, "7")
#   nstring.gsub!(/八/, "8")
#   nstring.gsub!(/九/, "9")

#   if nstring =~ /((\d)?千)?((\d)?百)?((\d)?十)?(\d)?$/
#     if $1
#       digit4 = $2 || "1"
#     end
#     if $3
#       digit3 = $4 || "1"
#     end
#     if $5
#       digit2 = $6 || "1"
#     end
#     digit1 = $7 || "0"
#   end

#   return (digit4+digit3+digit2+digit1).to_i
# end

# p kan2num("七千八百二十三")
# p kan2num("千八百二十三")
# p kan2num("八百二十三")
# p kan2num("百二十三")
# p kan2num("百三")
# p kan2num("二十三")
# p kan2num("十三")
# p kan2num("三")