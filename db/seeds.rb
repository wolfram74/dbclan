# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

names = []
passes = []
template_n = "boots_on_fire_%02d"
template_p = "swordfishing"
20.times do |i|
  names << (template_n % (i+1))
  if i <5
    passes << template_p
  else
    passes << template_p + (i/5+1).to_s
  end
end

names.each_with_index do |name, ind|
  Login.create({name: name ,pass:passes[ind] })
end