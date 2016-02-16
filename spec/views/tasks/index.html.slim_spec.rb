require 'rails_helper'

RSpec.describe "tasks/index", type: :view do
  before(:each) do
    assign(:tasks, [
      Task.create!(
        :status => 1,
        :name => "MyText",
        :description => "Description",
        :duration_time => 2,
        :list => nil
      ),
      Task.create!(
        :status => 1,
        :name => "MyText",
        :description => "Description",
        :duration_time => 2,
        :list => nil
      )
    ])
  end

  it "renders a list of tasks" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
