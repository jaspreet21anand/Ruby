require 'csv'
require_relative 'employee'

class CsvParse

  def initialize(file_path)
    @file_path = file_path
  end

  def read_and_group_by_category
    data_hash = Hash.new { |hash, key| hash[key] = [] }
    raw_data = CSV.foreach(@file_path, headers: true) do |row|
      key = row['Designation']
      data_hash[key] << Employee.new(row['EmpId'], row['Name'], row['Designation'])
    end
    data_hash
  end

  def write_to_file(output_file_path_name, data)
    File.open(output_file_path_name, 'w') do |file|
      data.each_pair { |key, value| file.puts key; file.puts value }
    end
  end

end
