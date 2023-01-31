# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database
puts "There are #{Company.all.count} companies"
puts "There are #{Contact.all.count} contacts"

apple = Company.find_by({"name" => "Apple"})
puts apple.inspect

tim = Contacts.new
tim["first_name"] = "Ben"
tim["last_name"] = "Stokes"
tim["email"] = "LA"
tim["company_id"] = apple["id"]
tim.save

contact = Contacts.new
contact["first_name"] = "Ben"
contact["last_name"] = "Stokes"
contact["email"] = "LA"
contact["company_id"] = apple["id"]
contact.save

# 1. insert new rows in the contacts table with relationship to a company

# 2. How many contacts work at Apple?

# 3. What is the full name of each contact who works at Apple?
