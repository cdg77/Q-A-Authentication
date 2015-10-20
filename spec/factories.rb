FactoryGirl.define do
  factory(:user) do
    first_name('First Name')
    last_name('Last Name')
    email('name@email.com')
    password('notpassword')
    password_confirmation('notpassword')
  end
end
