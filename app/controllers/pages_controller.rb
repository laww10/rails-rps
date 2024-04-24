class PagesController < ApplicationController 
  def home
    render({ :template => "game_templates/home"})
  end

  def rock
    computer_move = ["rock","paper","scissors"].sample

    if computer_move == "paper"
      success = "lost"
    elsif computer_move == "rock"
      success = "tied"
    else
      success = "won"
    end
  
    @move = "They played #{computer_move}!"
    @outcome = "We #{success} !"

    render({ :template => "game_templates/play_rock"})
  end
  
  def paper
    computer_move = ["rock","paper","scissors"].sample

    if computer_move == "paper"
      success = "tied"
    elsif computer_move == "rock"
      success = "won"
    else
      success = "lost"
    end
  
    @move = "They played #{computer_move}!"
    @outcome = "We #{success} !"

    render({ :template => "game_templates/play_paper"})

  end

  def scissors
    computer_move = ["rock","paper","scissors"].sample
    
    if computer_move == "scissors"
      success = "tied"
    elsif computer_move == "rock"
      success = "lost"
    else
      success = "won"
    end
  
    @move = "They played #{computer_move}!"
    @outcome = "We #{success} !"

    render({ :template => "game_templates/play_scissors"})
  
  end

end
  
