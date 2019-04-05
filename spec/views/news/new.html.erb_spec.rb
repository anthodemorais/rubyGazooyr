require 'rails_helper'

RSpec.describe "news/new", type: :view do
  before(:each) do
    assign(:news, News.new(
      :title => "MyString",
      :summary => "MyString",
      :content => "MyText"
    ))
  end

  it "renders new news form" do
    render

    assert_select "form[action=?][method=?]", news_index_path, "post" do

      assert_select "input[name=?]", "news[title]"

      assert_select "input[name=?]", "news[summary]"

      assert_select "textarea[name=?]", "news[content]"
    end
  end
end
