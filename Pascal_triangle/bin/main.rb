require_relative '../lib/pattern'

Pattern.generate_pascal(6) { |print_line| puts "#{ print_line.join(' ') }" }