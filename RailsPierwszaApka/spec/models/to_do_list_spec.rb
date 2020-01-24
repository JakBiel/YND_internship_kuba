require 'rails_helper'

RSpec.describe ToDoList, type: :model do
  context "by analyzing the only parameter, <<name>>" do
    #let(:project) { create(:project) }
    let(:to_do_list) { create(:to_do_list) }

    #
    #it "is not valid without a name" do
    #expect(to_do_list.name).not_to be_nil
    #end

    it "is valid with a name" do
      expect(to_do_list.name).not_to be_nil
    end

  end
end
