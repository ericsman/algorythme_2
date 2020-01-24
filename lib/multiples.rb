def sum_of_3_and_5_multiples (multiples)
    somme = 0
    if multiples.integer?
        for i in 1...multiples
            if i%3 == 0 || i%5 == 0
                somme += i
            end
        end
        return somme
    else
        return nil
    end
end

puts sum_of_3_and_5_multiples(0.2)
sum_of_3_and_5_multiples(11)
sum_of_3_and_5_multiples(0)
sum_of_3_and_5_multiples(3)
sum_of_3_and_5_multiples(1000)
sum_of_3_and_5_multiples(0.3)

