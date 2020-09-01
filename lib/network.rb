require './lib/character'

class Network
  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
    # @all_characters = []
    # @main_characters = []
  end

  def add_show(show)
    @shows << show
  end

  def main_characters
    all_characters = @shows.map do |show|
      show.characters
    end.flatten

    main_characters = all_characters.find_all do |character|
        character.salary > 500000 && character.name == character.name.upcase
    end
    main_characters
  end

  def actors_by_show
    all_characters = @shows.map do |show|
      show.characters
    end.flatten

    all_characters.group_by do |characters|
      @shows
    end
  end
end