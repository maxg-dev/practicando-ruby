puts "Serie fibonacci"

def fibonacciRecursive(num)
    if num == 0
        return 0
    elsif num == 1
        return 1
    else num > 1
        return (fibonacci(num-1) + fibonacci(num-2))
    end
end

def fibonacciVar(num)
    anterior = 0
    actual   = 1
    siguiente = anterior + actual
    puts anterior
    puts actual
    puts siguiente
    for i in 1..num do
        anterior = actual
        actual = siguiente
        siguiente = anterior + actual
        puts siguiente
    end
end

def fibonacciArrays(iterations)
    data = Array.new(iterations,0)
    data[1] = 1
    for i in 0..iterations-1 do
        if i > 0 and i < 9
            data[i+1] = data[i-1] + data[i]
        end
    end
    return data
end

puts fibonacciArrays(10).join(',')