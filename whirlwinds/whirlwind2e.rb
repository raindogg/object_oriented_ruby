sam = { recipes: 9, types: "crepes", languages: ["English", "Dothraki"] }
sally = { recipes: 5, types: "pizza", languages: ["french", "english", "japanese", "mandarin", "klingon", "pig latin"]}

if sam[:recipes] > 10 && sally[:languages].length > 5
  puts "Sam and Sally should date."
else
  puts "Sam and Sally should not date."
end

if sam[:types] == "crepes" || sally[:languages].index("french") != nil
  puts "Sam and Sally should get married."
else
  puts "Sam and Sally should not get married."
end