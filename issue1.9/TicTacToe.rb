module TicTacToe
  class Game
    def play
      catch(:finished) do
        loop do
          start_new_turn
          show_board
          
          check_move { |error_message|  puts error_message }
          check_win { puts "#{current_player} wins" }
          check_draw { puts "It's a tie." }
        end
      end
    end
  end
end