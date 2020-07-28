# takes in an array and sorts it recursively using the mergesort method

def mergesort(arr)
    if arr.length > 1
        n = arr.length - 1 #position
        left_half = arr[0..n/2]
        right_half = arr[n/2+1..n]
        a = mergesort(left_half)
        b = mergesort(right_half)
        #merge two parts together
        c = []
        until a.length == 0 && b.length == 0
            if a.length == 0
                c << (b.shift)
            elsif b.length == 0
                c << (a.shift)
            elsif a[0] < b[0]
                c << (a.shift)
            elsif a[0] > b[0]
                c << (b.shift)
            end
        end
        return c
    else
        return arr
    end
end

puts mergesort([8, 7, 3, 1, 5, 2, 4, 6])