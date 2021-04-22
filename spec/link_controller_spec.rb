# spec/link_controller_spec.rb

require 'rails_helper'

RSpec.describe Link, :type => :controller do
  it "returns a 302" do
        Link.shorten("https://www.mylink.com/with-a-large-url", "shorty4")

        get "/s/shorty4"
        expect(response).to have_http_status(302)
      end

end
