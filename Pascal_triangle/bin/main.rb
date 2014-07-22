require_relative '../lib/pattern'

j = Pattern.new

j.generate_pascal(10) {|print_this| puts "#{print_this.join(' ')}"}