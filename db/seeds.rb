puts "Creating companies..."
Company.create(name: "Google", founding_year: 1998)
Company.create(name: "Facebook", founding_year: 2004)
Company.create(name: "Dunder Mifflin", founding_year: 2002)
Company.create(name: "Enron", founding_year: 1995)

puts "Creating devs..."
Dev.create(name: "Rick")
Dev.create(name: "Morty")
Dev.create(name: "Mr. Meseeks")
Dev.create(name: "Gazorpazop")

puts "Creating freebies..."

devs = Dev.all
companies = Company.all

devs.each do |dev|
  companies.each do |company|
    Freebie.create(
      item_name: "Sample Item",
      value: 10,
      dev: dev,
      company: company
    )
  end
end

puts "Seeding done!"
