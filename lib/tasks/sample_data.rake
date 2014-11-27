namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    #create users
    user = User.create!(email: "youngwebking@gmail.com",
                        password: "password",
                        password_confirmation: "password")
    
    files = ['ball_bearings','bishop','iPhone_case','knight','legos','turkey_gobbler','virus']
    items = ['Ball Bearings','Bishop','iPhone Case','Knight','Legos','Turkey Gobbler','Virus']
    file_dir = '/var/www/teleport/lib/sample_data/'
    
    files.length.times do |i|
      name = items[i-1]
      price = '0.99'
      image = File.open(file_dir+'img/'+files[i-1]+'.jpg')
      gcode = File.open(file_dir+'gcode/'+files[i-1]+'.gcode')
      project = Product.create!(name: name,
                                price: price,
                                image: image,
                                gcode: gcode)
      image.close
      gcode.close
    end
  end
end
