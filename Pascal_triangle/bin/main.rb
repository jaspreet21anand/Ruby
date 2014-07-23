require_relative '../lib/pattern'

Pattern.generate_pascal(6) { |print_this| puts "#{ print_this.join(' ') }" }