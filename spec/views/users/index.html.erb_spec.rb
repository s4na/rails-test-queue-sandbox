require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before do
    FactoryBot.create(:user, name: "Name 1", age: 1)
    FactoryBot.create(:user, name: "Name 2", age: 2)
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "Name 1".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
