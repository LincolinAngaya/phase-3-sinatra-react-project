class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  #add routes here
  
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  # get  method to fetch  restaraunt with its  in the application

  get '/restaraunts' do
    
    restaraunts = Restaraunt.all.order(:id)
   
    restaraunts.to_json(only: [:id, :image_url, :name, :location, :description, :phone_number], include: {
      reviews: { only: [:comment], include: {
        user: { only: [:username, :created_at] }
      } }
    })
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
      username: params[:username]
      restaraunt_id: params[:restaraunt_id_])
    reviews.to_json
  end


  # patch  method to update  review in the application
    
  patch '/reviews/:id' do
    review = Review.find(params[:id])
    review.update(
      comment: params[:comment], 
      restaraunt_id: params[:restaraunt_id_])
    review.to_json
  end

   # delete  method to delete review in the application

   delete '/reviews/:id' do 
    review = Review.find(params[:id])
    review.destroy
    review.to_json
  end


 
end
