# Search with substrings

def substrings (text, dictionary)
    result = Hash.new
    dictionary.each{
        |val|
        count = text.scan(/^*#{val}/i).count
        count > 0 ? result[val] = count : nil
    }
    return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
