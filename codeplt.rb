class Easy
    # 1. Given a string, count the number of words that begin 
    # and end in the same letter.
    def firstLastLetter(str)
        cntr = 0

        str.split.each do |i|
            if i[0].upcase == i[-1].upcase
                cntr += 1
            end
        end

        return cntr
    end

    #2. Given a birth year, calculate the true year of a 
    #dog (1 hy  = 7 dy)
    def dogYears(yearborn)
        return (Time.now.year - yearborn.to_i)*7
    end

    #3. Given a string, count how many colors are used in the string
    def colorCounter(str)
        cntr = 0
        colors = ['blue','green','gray','red','black','purple']

        str.split.each do |word|
           colors.each do |color| 
               if word.downcase == color
                   cntr +=1
                   break
               end
           end
        end
        return cntr
    end

    #4. Return larger of 2 numbers when reversed
    #reverseMax(15,24) -> 15 bc 51>42
    def reverseMax(num1,num2)
        if num1.to_s.reverse.to_i > num2.to_s.reverse.to_i
            return num1
        else
            return num2
        end
    end
end

class Medium
    #1. return index of target number
    # search(5,[1,2,3,4,5]) -> 4
    def search(num,arr)
        found = false
        arr.each_with_index do |cnum, i|
            if cnum == num
                return i
                found = true
            end
        end
        if !found
            return -1
        end
    end

    #2. return index to insert number in sorted list
    def insert(num,arr)
        arr.each_with_index do |cnum, i|
            if num <= cnum
                return i
            end
        end
        return arr.length
    end
    
    #3. sort array of words by length, then alphabetically
    def wordSort(arr)
        # puts arr.inspect
        arr.each_with_index do |i, index|
            # puts "index: #{index}"
            min = index
            indj = index+1
            arr[index+1..-1].each do |j|
                # puts "min: #{arr[min]} curr: #{j}"
                if j.length < arr[min].length
                    min = indj
                    # puts "min changed len"
                end
                if j.length == arr[min].length and j<arr[min]
                    min = indj
                    # puts "min changed alph"
                end
                indj+=1
            end
            if min != index
                # puts "swap #{index} and #{min}"
                arr[index],arr[min] = arr[min],arr[index]
            end
        end
        return arr
    end
    #4 describe how you would design a program to count how many colors were used in a string
    #
    #I would used a double nested loop to iterate through the string and compare each word to each color name stored in its own array. If a word matches, it'll add to the counter and break from the inner loop. return the counter variable at the end
end

class Hard
    #1. write your own sorting algorithm
    def sort(arr)
        arr.each_with_index do |i, index|
            min = index
            indj = index+1
            arr[index+1..-1].each do |j|
                if j < arr[min]
                    min = indj
                end
                indj+=1
            end
            if min != index
                arr[index],arr[min] = arr[min],arr[index]
            end
        end
        return arr
    end

    #2. report number of occurences a char shows up in a string.
    # alphanumeric only
    def charCount(str)
        counter = Hash.new
        str.split('').each do |c|
            if (c>='a' and c<='z') or \
                (c>='A' and c<='Z') or \
                (c>='0' and c<='9')
                if !counter[c]
                    counter[c] = 1
                else
                    counter[c]+=1
                end
            end
        end
        return counter
    end
end
