require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = FactoryBot.create(:user, name: "Name 1", age: 1)
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input[name=?]", "user[name]"

      assert_select "input[name=?]", "user[age]"
    end
  end
end
