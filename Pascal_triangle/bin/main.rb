require_relative '../lib/pattern'

Pattern.generate_pascal(7) { |print_line| puts print_line.join(' ') }