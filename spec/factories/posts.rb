# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    title "MyString"
    content "MyText"
    image "MyString"
    category_id 1
  end
end
