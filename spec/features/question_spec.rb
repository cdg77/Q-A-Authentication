require 'rails_helper'

describe 'adding a question process' do
  it "adds a question" do
    user = FactoryGirl.create(:user)
    log_in(user)
    visit questions_path
    click_on "Add Question"
    fill_in 'Title', :with => "test title"
    fill_in 'Author', :with => "Bob"
    click_on "Create Question"
    expect(page).to have_content "test title"
  end
end
