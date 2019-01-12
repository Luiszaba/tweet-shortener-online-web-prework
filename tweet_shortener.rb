def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "for" => "4",
    "too" => "2",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
  end
end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map! do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortner(tweet)
  tweet.char.length > 140





