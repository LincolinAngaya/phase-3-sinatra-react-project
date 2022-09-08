
puts "Deleting restaraunt/user/review data..."
Restaraunt.destroy_all
User.destroy_all
Review.destroy_all

puts "Creating restaraunts..."
chiQ_japanese = Restaraunt.create(image_url: "https://images.pexels.com/photos/2041556/pexels-photo-2041556.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", name: "ChiQ Japanese", location:"Karen", phone_number: 748923227, description:"it s a restaraunt located easter part of Kenya with best services")
mandip_foods = Restaraunt.create(image_url: "https://images.pexels.com/photos/732199/pexels-photo-732199.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", name: "Mandip Foods", location:"Nairobi", phone_number: 778456732, description:"its believe the bset thing is customer satisfaction,welcome at our restaraunt")
benafes = Restaraunt.create(image_url: "https://images.pexels.com/photos/322154/pexels-photo-322154.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", name: "Benafes restaraunt", location:"Nakuru", phone_number: 712563893, description:"Welcome the area of flamingo and eat whilee watching beautifull lakes")
mums_magic = Restaraunt.create(image_url: "https://images.pexels.com/photos/1470502/pexels-photo-1470502.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", name: "Mum & Magic",location:"Eldoret",phone_number: 767853271, description:"Mums and magics has best disses that you order")
nairobi_dishes = Restaraunt.create(image_url: "https://images.pexels.com/photos/260931/pexels-photo-260931.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", name: "Nairobi Dishes", location:"Westlands", phone_number: 776389256, description:"Welcome Nairobi dishes where we have cheaper meals and free delivery")
chick_restaraunt = Restaraunt.create(image_url: "https://images.pexels.com/photos/265947/pexels-photo-265947.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", name: "Chick Restaraunt", location:"Ngong Road", phone_number: 793863208, description:"welcome chick we have best natural chicken at affotdable prices")
pepper_corn = Restaraunt.create(image_url: "https://images.pexels.com/photos/2607113/pexels-photo-2607113.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", name: "Pepper Corn", location:"Kakamega", phone_number: 719047284, description:"pepper corn has best luhya traditon meals that are pocket friendly, welcome")


puts "Creating users..."
lohan = User.create(username: "Lohan")
tina = User.create(username: "Tina")
emma= User.create(username: "Emma")
geri = User.create(username: "Geri")
brown = User.create(username: "Brown")
melanie= User.create(username: "Melanie")
victoria = User.create(username: "Victoria")


puts "Creating reviews..."
# ***********************************************************

# ***********************************************************
# Create Reviews Here
  Review.create(comment:"beautiful place", user_id: 4, restaraunt_id: 1)
  Review.create(comment:"interesting place", user_id: 5, restaraunt_id: 2)
  Review.create(comment:"good deliver", user_id: 6, restaraunt_id: 3)
  Review.create(comment:"super delicious", user_id: 7, restaraunt_id: 4)
  Review.create(comment:"neat chefs", user_id: 1, restaraunt_id: 5)
  Review.create(comment:"awesome", user_id: 2, restaraunt_id: 6)
  Review.create(comment:"nice ugali", user_id: 3, restaraunt_id: 7)


  Review.create(comment:"big fish", user_id: 1, restaraunt_id: 1)
  Review.create(comment:"very cheap", user_id: 7, restaraunt_id: 2)
  Review.create(comment:"affordable", user_id: 3, restaraunt_id: 3)
  Review.create(comment:"pocket friendly", user_id: 2, restaraunt_id: 4)
  Review.create(comment:"awesome", user_id: 4, restaraunt_id: 5)
  Review.create(comment:"amazing meals", user_id: 5, restaraunt_id: 6)
  Review.create(comment:"beautiful scenes", user_id: 6, restaraunt_id: 7)


  Review.create(comment:"poor services", user_id: 6, restaraunt_id: 1)
  Review.create(comment:"very slow", user_id: 4, restaraunt_id: 2)
  Review.create(comment:"improve abit", user_id: 5, restaraunt_id: 3)
  Review.create(comment:"poor delivery ", user_id: 3, restaraunt_id: 4)
  Review.create(comment:"nice swimming", user_id: 7, restaraunt_id: 5)
  Review.create(comment:"nice compound", user_id: 2, restaraunt_id: 6)
  Review.create(comment:"good interior", user_id: 1, restaraunt_id: 7)

  Review.create(comment:"poor interior", user_id: 6, restaraunt_id: 1)
  Review.create(comment:"love it", user_id: 5, restaraunt_id: 2)
  Review.create(comment:"beautiful city", user_id: 4, restaraunt_id: 3)
  Review.create(comment:"beautiful serving", user_id: 3, restaraunt_id: 4)
  Review.create(comment:"hating place", user_id: 1, restaraunt_id: 5)
  Review.create(comment:"loving place", user_id: 2, restaraunt_id: 6)
  Review.create(comment:"boring place", user_id: 1, restaraunt_id: 7)

  Review.create(comment:"super expensive", user_id: 7, restaraunt_id: 1)
  Review.create(comment:"first class", user_id: 6, restaraunt_id: 2)
  Review.create(comment:"fast food", user_id: 5, restaraunt_id: 3)
  Review.create(comment:"notted place", user_id: 4, restaraunt_id: 4)
  Review.create(comment:"beautiful place", user_id: 4, restaraunt_id: 5)
  Review.create(comment:"big fish", user_id: 3, restaraunt_id: 6)
  Review.create(comment:"beautiful place", user_id: 2, restaraunt_id: 7)
 
  Review.create(comment:"beautiful place", user_id: 7, restaraunt_id: 1)
  Review.create(comment:"beautiful place", user_id: 6, restaraunt_id: 2)
  Review.create(comment:"very cheap", user_id: 5, restaraunt_id: 3)
  Review.create(comment:"affordable", user_id: 4, restaraunt_id: 4)
  Review.create(comment:"pocket friendly", user_id: 3, restaraunt_id: 5)
  Review.create(comment:"awesome", user_id: 2, restaraunt_id: 6)
  Review.create(comment:"nice ugali", user_id: 1, restaraunt_id: 7)
  
  Review.create(comment:"big fish", user_id: 5, restaraunt_id: 1)
  Review.create(comment:"very cheap", user_id: 6, restaraunt_id: 2)
  Review.create(comment:"affordable", user_id: 7, restaraunt_id: 3)
  Review.create(comment:"pocket friendly", user_id: 1, restaraunt_id: 4)
  Review.create(comment:"awesome", user_id: 2, restaraunt_id: 5)
  Review.create(comment:"amazing meals", user_id: 3, restaraunt_id: 6)
  Review.create(comment:"beautiful scenes", user_id: 4, restaraunt_id: 7)
 
  Review.create(comment:"poor services", user_id: 1, restaraunt_id: 1)
  Review.create(comment:"very slow", user_id: 2, restaraunt_id: 2)
  Review.create(comment:"improve abit", user_id: 3, restaraunt_id: 3)
  Review.create(comment:"poor delivery ", user_id: 4, restaraunt_id: 4)
  Review.create(comment:"very cheap", user_id: 5, restaraunt_id: 5)
  Review.create(comment:"affordable", user_id: 6, restaraunt_id: 6)
  Review.create(comment:"pocket friendly", user_id: 7, restaraunt_id: 7)
