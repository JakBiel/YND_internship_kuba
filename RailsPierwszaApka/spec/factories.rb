FactoryBot.define do
  factory :project do
    name { "Johnasdfdsl" }
    description  { "Test" }
  end

  factory :to_do_list do
    association :project
    name { "TestRSPECowyToDOList"}
  end

  factory :task do
    association :to_do_list
    name { "Moj_RSPECowy_Task_nr_1"}
    description { "Deskrypcja_Taska_1"}
    due_date { "2010-12-11" }
    position { 34 }
    done_status { false }
  end


end
