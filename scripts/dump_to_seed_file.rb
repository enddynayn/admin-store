# USE THIS FILE TO MODIFY AND CREATE A SEED FILE OF THE CSV DATA
# THEN USE THE SEED FILE TO LOAD DATA
# MODIFY THE NAME OF THE FILE
# KEY VALUES IN ROW['*****']
require 'csv'
model_name = ARGV[0]

raise "Please provide a model class name to dump." unless model_name.present?
model = Object.const_get(model_name)
filename = "seed_#{model.table_name}_#{Time.now.strftime('%Y%m%d%H%M%S')}.rb"

File.open("db/#{filename}", 'w') do |file|
  file.puts "#{model.name}.transaction do"
    parsed_file = CSV.read('mini_proj-categories_items.csv', { headers: true, col_sep: "\t" })
    parsed_file.each do |row|
      # .downcase.gsub("'", '').gsub(/\s[.]/, '')
      file.puts "#{model.name}.create!(item_id: #{row['item_id']}, category_id: #{row['category_id']}\)"
    end
  file.puts "end"
end
