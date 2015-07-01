require 'rails_helper'

describe "the a video process" do
  it "adds a new post!" do
    visit posts_path
    click_on 'Post some LINX'
    fill_in 'Video url', :with => 'https://www.youtube.com/watch?v=aKdV5FvXLuI'
    fill_in 'Title', :with => 'D-RAD droppin bombs!'
    fill_in 'Description', :with => 'Un. Real.'
    click_on 'Create Post'
    expect(page).to have_content 'D-RAD'
  end

end
