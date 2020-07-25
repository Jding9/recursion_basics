# This code will take in the number N and run the Nth fibonacci number

# First, using iteration

def fibs(n)
    if n == 0
        return [0]
    elsif n == 1
        return [0, 1]
    else
        arr = [0, 1]
        until n == 1
            arr.push (arr[-1] + arr[-2])
            n = n - 1 
        end
        return arr
    end
end

# Then, using recursion, takes in a number and returns that many elements in a fibonacci sequence

def fibs_rec(n)
    if n == 0
        return [0]
    elsif n == 1
        return [0, 1]
    else
        fibs_rec(n-1) << fibs_rec(n-1)[-1] + fibs_rec(n-1)[-2]
    end
end

[0]
[0, 1]
[0, 1, 1]
[0, 1, 1, 2] # this is 3
[0, 1, 1, 2, 3]
[0, 1, 1, 2, 3, 5] # this is fibs(5)