# puts "あなたの名前は？"
# name = gets.chomp
# puts "#{name}さん。こんにちは。ご年齢は？"
# age = gets.to_i
# if age < 20
#   puts "あなたたちは未来であり、希望です"
# else
#   puts "いつもありがとうございます"
# end

#配列の練習
# names = ["マンチカン", "アメリカンショートヘア", "ブリティッシュショートヘア", "アビシニアン", "ロシアンブルー"]
# names.each do |name|
#   puts name
# end

# first, second, third = 1, 2, 3
# puts [first, second, third]

cats = ["ぷう", "ゆず", "ライチ"]
cats.each do |cat|
  case cat
  when ["ぷう"]
    puts "#{cat}はよく食べて元気な天真爛漫娘です"
  when ["ゆず"]
    puts "#{cat}は気難しいですがとっても優しい男の子です"
  else ["ライチ"]
    puts "#{cat}は人懐っこくておおらかな性格の最年長です"
  end
end