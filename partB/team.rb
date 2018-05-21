class Team

  attr_accessor :name, :players, :coach, :points

  def initialize(input_name, input_players, input_coach, input_points)
    @name = input_name
    @players = input_players
    @coach = input_coach
    @points = input_points
  end

  # def get_name()
  #   return @name
  # end
  #
  # def get_players()
  #   return @players
  # end
  #
  # def get_coach()
  #   return @coach
  # end
  #
  # def set_coach(coach)
  #   @coach = coach
  # end

  def add_player(player)
    @players << player
  end

  def check_for_player(player_query)
    for player in @players
      if(player == player_query)
        return true
      end
    end
      return false
  end

  def win_or_lose(result)
    if(result == "win")
      @points += 1
    end
  end
end
