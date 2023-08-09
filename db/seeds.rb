puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "13124654", category: "belgian"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "13124654", category: "belgian"}
kez =  {name: "Kez", address: "Near Mackenzie", phone_number: "13124654", category: "belgian"}
mc =  {name: "Mc donalds", address: "qualquer lugar", phone_number: "13124654", category: "belgian"}
pizzapedas =  {name: "pizza de pedaço", address: "augusta", phone_number: "13124654", category: "belgian"}

[dishoom, pizza_east, kez, mc, pizzapedas].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"