require 'rails_helper.rb'

feature 'Creating posts' do
  scenario 'can create post' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', "spec/files/images/hugefuckingampwithflamesandshit.jpg")
    fill_in 'Caption', with: 'Great big fucking amp bastard #ampbastard'
    click_button 'Create Post'
    expect(page).to have_content('#ampbastard')
    expect(page).to have_css("img[src*='hugefuckingampwithflamesandshit.jpg']")
  end

  scenario 'needs an image to create a post' do
    visit '/'
    click_link 'New Post'
    fill_in 'Caption', with: "No picture because YOLO"
    click_button 'Create Post'
    expect(page).to have_content('Halt, you fiend! You need an image to post here!')
  end
end