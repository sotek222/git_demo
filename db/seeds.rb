require_relative '../config/environment'

puts "Begin Seed: Developers"
Developer.destroy_all

d1 = Developer.create!(name: "Matt", language: "Javascript")
d2 = Developer.create!(name: "Ian", language: "Elixer")

puts "Finished Seed: Developers"

puts "Begin Seed: Bugs"
Bug.destroy_all
issues = ["Typo", "Crash", "Not Sure"]
devs = [d1, d2]

10.times do 
  Bug.create!(issue: issues.sample, developer_id: devs.sample.id)
end

puts "Finished Seed: Bugs"