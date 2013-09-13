class Player

end

class Dealer

  end

  class Deck
    attr_accessor :cards

    def initialize(num=1)
      @cards = []
      suits = ['H', 'D', 'S', 'C']
      card = [ '2', '3', '4', '5','6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
      suits.product (cards).each do |arr| #['H', '2']
        @cards << Card.new(arr[0], arr[1])

  end

  @cards =@cards * num
end

def shuffle
  cards.shuffle
end

  class Card
    attr_accessor :suit :value
    
    def initialize (suit, value)
      @suit = suit
      @value = value
  end

  def front
    "The #{value} of #{suit}."
  end

  def back
    "some image"
  end 
end

class Blackjack
  def initialize
    @player = Player.new
    @dealer = Dealer.new
    @deck = Deck.new
  end

  def deal_cards
    @player.cards < deck.deal

  end

  def run

    deal_cards
    show_cards
    player_turn
    dealer_turn
    who_won?
    play_again?
  end
end











#A little extra credit.

#module Swimming
  #def swim
   # "#{name} is swimming!"
  #end

#module Fetchable
#def fetch
    #{}"#{name} is fetching"
  #end

#class Animal 
    #attr_accessor :name

    #def initialize (name)
      #@name = name
    #end

    #def speak 
      #{}"#{name} is speaking"
    #end end

    #class Mammal < Animal
    #  def warm_blodded
   #     true
   #   end
   # end
#
   # class Dog < Mammal
   #   include Swimmable
    #  include Fetchable

     # def speak 
     #   "#{name} is barking"
     # end 
   # end

   # class Cat <Mammal
    #  def speak
    #    "#{name} is meowing"
    #  end
   # end

    #fido = Dog.new ('fido')
    #puts fido.name
   # puts fido.speak
   # puts fido.swim

   # kitty = Cat.new ('kitty')
   # puts kitty.name
    #puts kitty.speak
    #puts kitty.swim 

 # end
#end

