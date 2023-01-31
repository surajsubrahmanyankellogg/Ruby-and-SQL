# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table

puts "There are #{Company.all.count} companies "

new_company = Company.new
new_company["name"] = "Apple"
new_company["city"] = "SF"
new_company["state"] = "SF"
new_company["url"] = "SF"
new_company.save

new_company = Company.new
new_company["name"] = "Amazon"
new_company["city"] = "SF"
new_company["state"] = "LA"
new_company["url"] = ""
new_company.save

puts "There are #{Company.all.count} companies "
# 3. query companies table to find all row with California company

all_companies = Company.all
puts all_companies.inspect

# 4. query companies table to find single row for Apple
cali_companies = Company.where({"state" => "SF"})
puts cali_companies.inspect
puts "Cali companies #{cali_companies.count}"
# 5. read a row's column value
apple = Company.find_by({"name" => "Apple"})
puts apple.inspect
# 6. update a row's column value
amazon = Company.find_by({"name" => "Amazon"})
amazon["url"] = "www.amazon.com"
amazon.save
puts amazon.inspect
# 7. delete a row
twitter = Company.find_by({"name" => "Apple"})
puts twitter.inspect
twitter.destroy
puts twitter.inspect