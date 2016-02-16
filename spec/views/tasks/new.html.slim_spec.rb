require 'rails_helper'

RSpec.describe "tasks/new", type: :view do
  before(:each) do
    assign(:task, Task.new(
      :status => 1,
      :name => "MyText",
      :description => "MyString",
      :duration_time => 1,
      :list => nil
    ))
  end

  it "renders new task form" do
    render

    assert_select "form[action=?][method=?]", tasks_path, "post" do

      assert_select "input#task_status[name=?]", "task[status]"

      assert_select "textarea#task_name[name=?]", "task[name]"

      assert_select "input#task_description[name=?]", "task[description]"

      assert_select "input#task_duration_time[name=?]", "task[duration_time]"

      assert_select "input#task_list_id[name=?]", "task[list_id]"
    end
  end
end
