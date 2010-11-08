require 'cucumber/formatter/pretty'
module Slowhandcuke
  class Formatter < Cucumber::Formatter::Pretty
    def before_step( step )
      @io.printf "... #{step.name}"
      @io.flush
    end

    def before_step_result( *args )
      @io.printf "\r"
      super
    end
  end
end
