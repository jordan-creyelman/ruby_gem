def caesar_cipher(str,n)
     abc = ("a".."z").to_a.join
     abc_rot = abc.chars.rotate(n).join
     str.tr(abc, abc_rot)
end
number =1
string ="a"
print caesar_cipher("abcdefghijklmnopqrstuvwxyz", 2)
