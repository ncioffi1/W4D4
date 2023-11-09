def my_min(arr1)
    sorted = false

    while sorted == false
        
        sorted = true
        (0...arr.length).each do | i1 |
            if i1 < arr1.length - 1
                if arr1[i1] < arr1[i1 + 1]
                    arr1[i1], arr1[i1+1] = arr1[i1+1], arr1[i1]
                    sorted = false
                end
            end
        end
    end
    arr1
end

def my_min(arr1)
    smallest_value = arr1[0]

    arr1.each do |val|
        if val < smallest_value
            smallest_value = val
        end
    end
    smallest_value
end

def sub_sum(arr1)
    sub_sums = []

    (0...arr1.length).each do | i1 |
        sum = arr1[i1]
        sub_sums << sum
        (0...arr1.length).each do | i2 |

            if i2 > i1
                sum += arr1[i2]
                sub_sums << sum
            end
        end
    end
    max = sub_sums[1]
    sub_sums.each do |val|
        if val > max
            max = val
        end
    end
    max
end


