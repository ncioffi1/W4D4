require "byebug"

def first_anagram?(str1, str2)
    arr1 = str1.split('')
    arr2 = arr1.permutation(str1.length).to_a

    # print arr2
    arr2.map! { |subarray| subarray.join('') }

    return arr2.include?(str2)
end
# O(n!)

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true



def second_anagram?(str1, str2)
    # debugger
    arr2 = str2.split("")
    str1.each_char do |char|
        i = arr2.find_index(char)
        # print i
        arr2.delete_at(i) if !i.nil?
    end
    str2 = arr2.join("")
    # print str1
    # print str2
    return str2.empty?

end
# O(n^2)

# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true

def third_anagram?(str1, str2)
    # debugger
    arr1 = str1.split("")
    arr2 = str2.split("")
    arr1.sort!
    arr2.sort!
    str1 = arr1.join("")
    str2 = arr2.join("")
    return str1 == str2
end
# O(n log n)

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true

def fourth_anagram?(str1, str2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)
    str1.each_char do |char|
        hash1[char] += 1
    end
    str2.each_char do |char|
        hash2[char] += 1
    end
    return hash1 == hash2

end
# O(n)

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true