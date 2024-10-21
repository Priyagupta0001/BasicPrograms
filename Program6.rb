require 'csv'

# Define the input CSV file path
input_file = 'data.csv'

# Read from the CSV file
data = CSV.read(input_file, headers: true)

# Process the data (for example, you could double the values in the first column)
data.each do |row|
  if row['Value'].to_f.to_s == row['Value'] # Check if it's a number
    row['Value'] = (row['Value'].to_f * 2).to_s
  end
end

# Write back to the CSV file
CSV.open(input_file, 'w') do |csv|
  csv << data.headers  # Write headers
  data.each do |row|
    csv << row  # Write each row of processed data
  end
end

puts "Data processed and written back to #{input_file}"
