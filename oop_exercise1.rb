# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# # 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

class Card 
  attr_reader :question, :answer, :add_point
  def initialize(question, answer)
    @question = question
    @answer = answer
    @add_point = false 
  end

  def correct?
    user_answer = gets.chomp.upcase
    if user_answer == @answer
      puts "Correct!"
      @add_point = true
    else
      puts "Incorrect. Try again."
      user_answer = gets.chomp.upcase
      if user_answer == @answer
        puts "Correct! Second time's a charm."
        @add_point = true
      else
        puts "Still incorrect."
      end
    end
  end
end

class Deck
  def initialize(input_hash)
    @cards = input_hash.to_a
    @number_of_cards = @cards.length
  end

  def remaining_cards
    @number_of_cards
  end

  def draw_card
    new_card = @cards[0]
    card = Card.new(new_card[0], new_card[1])
    @cards.delete(new_card)
    @number_of_cards -= 1
    card
  end
end

trivia_data = {
  "What is the capital of Illinois? A) Springfield B) Chicago C) Rockford" => "A",
  "Is Africa a country or a continent? A) Continent B) Country" => "A",
  "Tug of war was once an Olympic event. A) True B) False" => "A"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class
score = 0 
wrong_answers = []
while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  card.correct?
  if card.add_point == true
    score += 1
  else
    wrong_answers << card
  end
end

puts "You finished with a final score of " + score.to_s

if score < 3
  puts "Would you like to retry your incorrect guesses? (y/n)"
  choice = gets.chomp.downcase

  if choice == "y"
    wrong_answers.each do |answer|
      puts answer.question
      answer.correct?
    end
  else
    puts "Thanks for playing!"
  end
end
