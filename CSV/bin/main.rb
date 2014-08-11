require_relative '../lib/csv_parse'

employeefile = CsvParse.new('../resources/csvfile.csv')
employeefile.write_to_file('../resources/output.txt',employeefile.read_and_group_by_category)
