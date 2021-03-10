signal = gets.chomp#(chompは末尾の改行を削除する処理。)
#(最後の文字列の後ろに改行コードが含まれると、意図した処理が動作しない。)
case signal
when "red"
  puts "stop!"
when "yellow"
  puts "caution!"
when "blue"
  puts "go!"
else 
  puts "wrong signal"
end
