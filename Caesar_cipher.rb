#  Caesar cipher

input_text = String.new       
input_shift = 0          

puts "\n\n~~~~~~~~ Caesar cipher ~~~~~~~~"
puts "\n\nEnter your text:"
input_text = gets.chomp

puts "\nEnter the Cipher shift: "
input_shift = gets.to_i

#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
def caesar_cipher (text, shift)
    num_arr = []
    arr_trans = []
    text.each_char{ |i| num_arr.push(i.ord ) }
    num_arr.map{
        |l| 
        if l.between?(95,122) 
            if shift > 0 
                (l+shift) > 122 ? arr_trans.push((l+shift) - 26) : arr_trans.push(l+shift)
            elsif shift < 0
                (l+shift) < 97 ? arr_trans.push((l+shift) + 26) : arr_trans.push(l+shift)
            end
        elsif l.between?(65,90)
            if shift > 0
                (l+shift) > 90 ? arr_trans.push((l+shift) - 26) : arr_trans.push(l+shift)
            elsif shift < 0
                (l+shift) < 65 ? arr_trans.push((l+shift) + 26) : arr_trans.push(l+shift)
            end
        else 
            arr_trans.push(l)
        end
    }
   arr_trans.map!{|val| val.chr}.join    

end
puts "\n\n RESULT: " 
puts caesar_cipher(input_text, input_shift)
