# Loaded with rake db:seed (or created alongside the db with db:setup).

(1..100).to_a.each do |i|
  Cat.create(name: "Cat #{i}")
end    
