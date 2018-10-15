
def translate(str)
    str = str.downcase
    voyelles = ['a', 'e', 'i', 'o', 'u']
    word = str.split(' ')
    tab_result = []

word.each_with_index do |word, i|
    traduc = ''
    qu = false
    if voyelles.include? word[0]
        traduc = word + 'ay'
        tab_result.push(traduc)
        
    else
        word = word.split('')
        count = 0
        word.each_with_index do |char, index|
            if voyelles.include? char
                
                if char == 'u' and traduc[-1] == 'q'
                    qu = true
                    traduc = word[i][count + 1..word[i].length] + traduc + 'uay'
                    tab_result.push(traduc)
                    next
                end
                break
            else
             
                if char == 'q' and word[i+1] == 'u'
                    qu = true
                    traduc = word[i][count + 2..word[i].length] + 'quay'
                    tab_result.push(traduc)
                    next
                else
                    traduc += char
                end
                count += 1
            end
        end
     
        if not qu
            traduc = word[i][count..word[i].length] + traduc + 'ay'
            tab_result.push(traduc)
        end
    end

end
tab_result.join(' ')
end

