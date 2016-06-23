require_relative 'bowling_game'

module Bowling
  module Game
    class Interface
      attr_reader :player_id
      def initialize(id=1)
        @frameset = Bowling::Game::Internal.new
        @player_id = id
      end

      def roll(pins)
        @frameset.roll(pins)
      end

      def score
        @frameset.score
      end

      def frame_score(frame)
        @frameset.frame_score(frame)
      end

      def frame_played
        @frameset.frame_played
      end

      def check_last_roll
        @frameset.check_last_roll
      end
    end
  end
end