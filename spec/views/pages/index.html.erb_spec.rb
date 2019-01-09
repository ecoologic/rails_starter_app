require 'rails_helper'

RSpec.describe "pages/index", type: :view do
  before(:each) do
    assign(:pages, [
      Page.create!(
        :name => "Name",
        :url => "Url",
        :html => "Html"
      ),
      Page.create!(
        :name => "Name",
        :url => "Url",
        :html => "Html"
      )
    ])
  end

  it "renders a list of pages" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => "Html".to_s, :count => 2
  end
end
