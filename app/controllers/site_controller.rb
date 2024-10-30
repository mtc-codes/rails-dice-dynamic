class SiteController < ApplicationController
  def home
    render({:template => "pages/home"})
  end

  def five_four
    @rolls = []

    5.times do
      die = rand(1..4)

      @rolls.push(die)
    end
    render({:template => "pages/five_four"})
  end

  def one_twenty
    @rolls = []

    1.times do
      die = rand(1..20)

      @rolls.push(die)
    end
    render({:template => "pages/one_twenty"})
  end

  def two_six
    @rolls = []

        2.times do
          die = rand(1..6)
      
          @rolls.push(die)
        end
    render({:template => "pages/two_six"})
  end 

  def two_ten
    @rolls = []

    2.times do
      die = rand(1..10)

      @rolls.push(die)
    end
    render({:template => "pages/two_ten"})
  end

  def flexible
    @num_dice = params.fetch("number_of_dice").to_i

    @sides = params.fetch("how_many_sides").to_i
  
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@sides)
  
      @rolls.push(die)
    end
    render({ :template => "pages/flexible"})
  end
end
