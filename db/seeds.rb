# Loaded with rake db:seed (or created alongside the db with db:setup).

(1..100).to_a.each do |i|
  Monkey.create(name: "Monkey #{i}")
end    
