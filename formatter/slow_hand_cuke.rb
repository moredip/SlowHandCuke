require 'cucumber/formatter/pretty'
module Formatter
  class SlowHandCuke < Cucumber::Formatter::Pretty
    def before_step( step )
      print_ansi_code 's'  # save cursor position 
      @io.printf "... #{step.name}"
      @io.flush
    end

    def before_step_result( *args )
      print_ansi_code '1K' # clear current line
      print_ansi_code 'u'  # move cursor back to start of line
      super
    end

    private

    def print_ansi_code(code)
      @io.printf "\033[#{code}"
    end
  end
end
