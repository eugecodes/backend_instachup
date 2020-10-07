require 'rails_helper'

RSpec.describe "images/edit", type: :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      :name => "MyString",
      :path => "MyString",
      :article_id => 1
    ))
  end

  it "renders the edit image form" do
    render

    assert_select "form[action=?][method=?]", image_path(@image), "post" do

      assert_select "input#image_name[name=?]", "image[name]"

      assert_select "input#image_path[name=?]", "image[path]"

      assert_select "input#image_article_id[name=?]", "image[article_id]"
    end
  end
end
