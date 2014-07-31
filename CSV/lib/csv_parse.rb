require 'csv'

class CsvParse

  def initialize(file_path)
    @file_path = file_path
  end

  def read_and_write_by_category_to(output_file_path_name)
    data_hash = Hash.new { |hash, key| hash[key] = '' }
    raw_data = CSV.foreach(@file_path, :headers => true) do |row|
      key = row['Designation']
      data_hash[key] << "#{ row['Name'] }(EmpId:#{ row['EmpId'] })\n"
    end
    File.open(output_file_path_name, 'w') do |file|
      file.puts data_hash.flatten
    end
  end

end
