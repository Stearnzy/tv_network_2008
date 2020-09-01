require './lib/character'

class Show
  attr_reader :name, :creator, :characters

  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = characters
  end

  def total_salary
    total_sum = 0
    characters.each do |character|
      total_sum += character.salary
    end
    total_sum
  end

  def highest_paid_actor
    highest_paid = characters.max_by do |character|
      character.salary
    end
    highest_paid.actor
  end

  def actors
    actor_list = characters.map do |character|
      character.actor
    end
    actor_list
  end
end