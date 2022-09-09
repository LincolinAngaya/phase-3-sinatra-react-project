class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here get "/" do
    { message: "Good luck with your project!" }.to_json
  

  #add routes here

  # post method to log in
  
  post "/login" do
    admin = Admin.find_by(email: params[:email], password: params[:password])

    if admin != nil
      admin.to_json(only: [:id, :firstname, :email])
    else
      response = {response: "Invalid email or Password"}
      response.to_json
    end
  end

  #post method to log in

  post "/create-account" do
    existingAdmin = Admin.find_by(email: params[:email])

    if existingAdmin != nil
      response = {response: "User already Exists"}
      response.to_json
    else
      newAdmin = Admin.create(
        firstname: params[:firstname],
        lastname: params[:lastname],
        email: params[:email],  
        password: params[:password]
      )
      newAdmin.to_json(only: [:id, :firstname, :email])
    end
  end











  
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # get  method to fetch  restaraunt with   in the application

  get '/restaraunts' do
    
    restaraunts = Restaraunt.all.order(:id)
   
    restaraunts.to_json(only: [:id, :image_url, :name, :location, :description, :phone_number], include: {
      reviews: { only: [:comment], include: {
        user: { only: [:username, :created_at] }
      } }
    })
  end

   # get  method to fetch  reviews   in the application

   get '/reviews' do
    
    reviews = Review.all.order(:id)
   
    reviews.to_json(only: [:comment], include: {
     
        user: { only: [:username, :created_at] }
      } 
    )
  end

# post method to add restaraunt in the application

  post '/restaraunts' do 
    restaraunts = Restaraunt.create(
      image_url: params[:image_url],
      name: params[:name],
      location: params[:location],
      phone_number: params[:phone_number],
      description: params[:description]
    )

    restaraunts.to_json
  end

  # post method to add review to the restaraunt in the application
    
  post "/reviews" do
    reviews = Review.create(
      comment: params[:comment], 
       user_id: params[:user_id],
       restaraunt_id: params[:restaraunt_id]
      )

    reviews.to_json
  end


  # patch  method to update  review in the application
    
  patch '/restaraunts/:id' do
    restaraunts = Restaraunt.find(params[:id])
    restaraunts.update(
      image_url: params[:image_url],
      name: params[:name],
      phone_number: params[:phone_number],
      location: params[:location],
      description: params[:description]

      )

      restaraunts.to_json
  end

   # delete  method to delete review in the application

   delete '/reviews/:id' do 
     reviews = Review.find(params[:id])
     reviews.destroy
     reviews.to_json
  end


 
end
