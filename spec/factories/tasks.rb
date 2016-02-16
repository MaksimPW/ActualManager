FactoryGirl.define do
  factory :task do
    status 1
    name "MyText"
    description "MyString"
    goal_time "2016-02-17 00:46:27"
    duration_time 1
    list nil
  end
end
