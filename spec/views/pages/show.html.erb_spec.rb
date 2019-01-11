require 'rails_helper'

RSpec.describe "pages/show", type: :view do
  let(:page) { create(:page, html: %(<script>alert("Danger: User input!!")</script>)) }

  before { assign(:page, page) }

  it "renders attributes in <p>" do
    render

    expect(rendered).to include page.name
    expect(rendered).to include page.pretty_url
    expect(rendered).to include CGI.escapeHTML(page.html)
  end
end
