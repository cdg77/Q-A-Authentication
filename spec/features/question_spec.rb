require 'rails_helper'

describe 'adding a question process' do
  it "adds a question" do
    visit questions_path
    click_on "Add Question"
    fill_in 'First name', :with => "Bob"
    fill_in 'Last name', :with => "Blob"
    fill_in 'Email', :with => "Bob@Blob.com"
    fill_in 'Password', :with => "password"
    fill_in 'Password confirmation', :with => "password"
    click_on "Create User"
    click_on "Add Question"
    fill_in 'Title', :with => "test title"
    fill_in 'Author', :with => "Bob"
    click_on "Create Question"
    expect(page).to have_content "test title"
  end
end
