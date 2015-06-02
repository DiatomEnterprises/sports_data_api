module SportsDataApi
  module Nfl
    class Actions
      include Enumerable
      attr_reader :actions

      def initialize(actions)
        @actions = actions.map do |action|
          Action.new(action)
        end
      end

      def each &block
        actions.each do |action|
          if block_given?
            block.call action
          else
            yield action
          end
        end
      end
    end
  end
end
