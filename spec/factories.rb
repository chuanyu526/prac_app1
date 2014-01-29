FactoryGirl.define do 
  factory :user do 
    sequence(:name)  { |n| "Person #{n} " }
    sequence(:email) { |n| "example_#{n}@111.com"}
    password "foobar"
    password_confirmation "foobar"
    factory :admin do
    	admin true
     end
  end 
end