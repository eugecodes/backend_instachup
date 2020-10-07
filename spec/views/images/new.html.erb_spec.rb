require 'rails_helper'

RSpec.describe "images/new", type: :view do
  before(:each) do
    assign(:image, Image.new(
      :name => "MyString",
      :path => "MyString",
      :article_id => 1
    ))
  end

  it "renders new image form" do
    render

    assert_select "form[action=?][method=?]", images_path, "post" do

      assert_select "input#image_name[name=?]", "image[name]"

      assert_select "input#image_path[name=?]", "image[path]"

      assert_select "input#image_article_id[name=?]", "image[article_id]"
    end
  end
end
