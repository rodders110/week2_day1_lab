require("minitest/autorun")
require("minitest/rg")

require_relative("../team")


class TestTeam < MiniTest::Test
  # def test_output
  #   team = Team.new("Claymore",["Roger","Charles","Paul","Anthony"],"Godfred")
  #
  #   assert_equal("Claymore", team.get_name())
  #   assert_equal(["Roger","Charles","Paul","Anthony"],team.get_players())
  #   assert_equal("Godfred", team.get_coach())
  # end
  #
  # def test_set_coach
  #   team = Team.new("Claymore",["Roger","Charles","Paul","Anthony"],"Godfred")
  #
  #   new_coach = team.set_coach("Reginald")
  #
  #   assert_equal("Reginald", new_coach)
  # end

  def test_output
    team = Team.new("Claymore",["Roger","Charles","Paul","Anthony"],"Godfred", 0)

    assert_equal("Claymore", team.name)
    assert_equal(["Roger","Charles","Paul","Anthony"],team.players)
    assert_equal("Godfred", team.coach)
  end

  def test_set_coach
    team = Team.new("Claymore",["Roger","Charles","Paul","Anthony"],"Godfred", 0)

    assert_equal("Reginald", team.coach = "Reginald")
  end

  def test_add_player
    team = Team.new("Claymore",["Roger","Charles","Paul","Anthony"],"Godfred", 0)

    team.add_player("Bugs Bunny")

    assert_equal(["Roger","Charles","Paul","Anthony","Bugs Bunny"], team.players)
  end

  def test_check_for_player
    team = Team.new("Claymore",["Roger","Charles","Paul","Anthony"],"Godfred", 0)

    player = "Paul"

    assert_equal(true, team.check_for_player(player))

  end

  def test_win
      team = Team.new("Claymore",["Roger","Charles","Paul","Anthony"],"Godfred", 0)

      team.win_or_lose("win")

      assert_equal(1,team.points)
  end

  def test_lose
      team = Team.new("Claymore",["Roger","Charles","Paul","Anthony"],"Godfred", 0)

      team.win_or_lose("lose")

      assert_equal(0,team.points)
  end

end
