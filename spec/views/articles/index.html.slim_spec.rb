require 'rails_helper'

RSpec.describe "articles/index", type: :view do
  before(:each) do
    assign(:articles, [
      Article.create!(
        content: "MyText",
        user: nil,
        title: "Title"
      ),
      Article.create!(
        content: "MyText",
        user: nil,
        title: "Title"
      )
    ])
  end

  it "renders a list of articles" do
    render
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Title".to_s, count: 2
  end
end
