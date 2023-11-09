def first_anagram?(str1, str2)
    arr1 = str1.split('')
    arr2 = arr1.permutation(str1.length).to_a

    # print arr2
    arr2.map! { |subarray| subarray.join('') }

    return arr2.include?(str2)
end

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true