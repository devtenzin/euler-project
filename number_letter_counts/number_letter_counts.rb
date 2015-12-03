def number_letter_counter
  num_20 = {
    "0" => "",
    "1" => "one",
    "2" => "two",
    "3" => "three",
    "4" => "four",
    "5" => "five",
    "6" => "six",
    "7" => "seven",
    "8" => "eight",
    "9" => "nine",
    "10" => "ten",
    "11" => "eleven",
    "12" => "twelve",
    "13" => "thirteen",
    "14" => "fourteen",
    "15" => "fifteen",
    "16" => "sixteen",
    "17" => "seventeen",
    "18" => "eighteen",
    "19" => "nineteen",
    "20" => "twenty"

    }

  places = {
    "2" => "twenty",
    "3" => "thirty",
    "4" => "forty",
    "5" => "fifty",
    "6" => "sixty",
    "7" => "seventy",
    "8" => "eighty",
    "9" => "ninety",
    }

  num_words = []

  (1..1000).each do |x|
    if num_20.has_key?(x.to_s) && x < 21
      num_words.push("#{num_20[x.to_s]}")
    end
    if x > 20 && x < 100 && places.has_key?(x.to_s[0]) && num_20.has_key?(x.to_s[1])
      num_words.push("#{places[x.to_s[0]]}-#{num_20[x.to_s[1]]}")
    end
    if x >= 100 && x < 1000 && num_20.has_key?(x.to_s[0]) && num_20.has_key?(x.to_s[2]) && x.to_s[1] == "0"
      num_words.push("#{num_20[x.to_s[0]]} hundred and #{num_20[x.to_s[2]]}")
    end

    if x >= 100 && x < 1000 && num_20.has_key?(x.to_s[0]) && num_20.has_key?(x.to_s[1..-1])
      num_words.push("#{num_20[x.to_s[0]]} hundred and #{num_20[x.to_s[1..-1]]}")
    end

    if x >= 100 && x < 1000 && num_20.has_key?(x.to_s[0]) && num_20.has_key?(x.to_s[2]) && places.has_key?(x.to_s[1])
      num_words.push("#{num_20[x.to_s[0]]} hundred and #{places[x.to_s[1]]}-#{num_20[x.to_s[2]]}")
    end

    if x > 999 && num_20.has_key?(x.to_s[0])
      num_words.push("#{num_20[x.to_s[0]]} thousand")
    end
  end

  num_words.map! { |x| x.chomp(" and ") }
  num_words.map! { |x| x.chomp("-")}

  sum = 0

  num_words.map! { |x| x.gsub(/[ -]/,"") }.each { |x| sum += x.length}
  puts sum



end




