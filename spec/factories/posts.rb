FactoryBot.define do
  factory :post do
    caption "Great big fucking amp bastard #ampbastard"
    image Rack::Test::UploadedFile.new(Rails.root + 'spec/files/images/hugefuckingampwithflamesandshit.jpg', 'image/jpg')
  end
end