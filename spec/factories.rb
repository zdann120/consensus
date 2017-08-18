FactoryGirl.define do
  factory :respondent do
    name "MyString"
    email "MyString"
    document nil
    status 1
    approved false
  end
  factory :document do
    user nil
    title "MyString"
    description "MyText"
    manually_approved false
    token ""
  end
  factory :user do
    
  end
end
