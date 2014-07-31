require_relative '../lib/csv_parse'

employeefile = CsvParse.new('../resources/csvfile.csv')
employeefile.read_and_write_by_category_to('../resources/output.txt')
