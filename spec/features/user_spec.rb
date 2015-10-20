require 'rails_helper'

describe 'adding a user process' do
  it "adds a user" do
    visit questions_path
    click_on "Sign Up"
    fill_in 'First name', :with => "Bob"
    fill_in 'Last name', :with => "Blob"
    fill_in 'Email', :with => "Bob@Blob.com"
    fill_in 'Password', :with => "password"
    fill_in 'Password confirmation', :with => "password"
    click_on "Create User"
    expect(page).to have_content "User created!"
  end

  it "throws an error when entries are missing from a field" do
    visit questions_path
    click_on "Sign Up"
    fill_in 'First name', :with => "Bob"

    click_on "Create User"
    expect(page).to have_content "You have these errors:"
  end
end
