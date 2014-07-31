require_relative '../lib/csv_parse'

employeefile = CsvParse.new('/media/jaspreet/1682D03482D019D7/Exercises/Ruby/CSV/csvfile.csv')
employeefile.read_n_write_by_category_to('/media/jaspreet/1682D03482D019D7/Exercises/Ruby/CSV/bin/output.txt')
