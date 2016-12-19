FactoryGirl.define do
  factory :comment do
    content "MyString"
    author "MyString"
    article Article.create(title:"Testing", content:"Testing", author: "Testing")
  end
end
