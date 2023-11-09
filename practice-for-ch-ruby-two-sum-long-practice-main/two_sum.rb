def bad_two_sum?(arr, target)
    arr2 = arr.permutation(2).to_a

    arr2.each do |sub_arr, i|
        sum = sub_arr[0] + sub_arr[1]
        if sum == target
            return true
        end
    end
    false
end

def ok_two_sum?(arr, target)
    arr.sort!

    left = 0
    right = arr.length - 1
  
    while left < right
      sum = arr[left] + arr[right]
  
      return true if sum == target
  
      if sum < target
        left +=1
      else
        right -=1
      end
    end
    false
end

def two_sum?(arr, target)

  seen = {}

  array.each do |number|
    complement = target_sum - number

    return true if seen[complement]

    seen[number] = true
  end
  false
end



