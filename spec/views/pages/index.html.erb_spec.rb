require 'rails_helper'

RSpec.describe "pages/index", type: :view do
  let(:page) { build(:page) }
  before { assign(:pages, [page, page]) }

  it "renders a list of pages" do
    render

    assert_select "tr>td", text: page.name, count: 2
    assert_select "tr>td", text: page.pretty_url, count: 2
  end
end
