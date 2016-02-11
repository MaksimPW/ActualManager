require 'rails_helper'

RSpec.describe "lists/edit", type: :view do
  before(:each) do
    @list = assign(:list, List.create!(
      :name => "MyString",
      :description => "MyText",
      :id_parent => 1
    ))
  end

  it "renders the edit list form" do
    render

    assert_select "form[action=?][method=?]", list_path(@list), "post" do

      assert_select "input#list_name[name=?]", "list[name]"

      assert_select "textarea#list_description[name=?]", "list[description]"

      assert_select "input#list_id_parent[name=?]", "list[id_parent]"
    end
  end
end
