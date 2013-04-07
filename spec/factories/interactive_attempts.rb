# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :interactive_attempt do
    user_id 1
    challenge_id 1
    code "MyText"
  end
end
