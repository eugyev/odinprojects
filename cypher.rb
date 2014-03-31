def caesar_cipher(code, offset = 0)
  code.downcase!
  result = ''
  code.split('').each do |letter|
    result = result + shiftLetter(letter, offset.to_i)
  end
  result
end

def shiftLetter(letter, offset)
  (letter.ord + offset > 122) ? (letter.ord + offset - 26).chr : (letter.ord + offset).chr
end

puts "Enter code to encrypt"
code = gets.chomp
puts "Enter offset"
shift = gets.chomp
begin
  shift = Integer(shift)
  puts caesar_cipher(code, shift)
rescue
  puts 'shift value is not an integer'
end

