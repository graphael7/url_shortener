# spec/link_spec.rb

require 'rails_helper'

RSpec.describe Link, :type => :model do
  it "is not valid without url" do
    expect(Link.new).to_not be_valid
  end
  it "is valid with url and no slug" do
    expect(Link.new(url:'https://www.mylink.com/with-a-large-url')).to be_valid
  end

  it "is valid with url and no slug" do
    expect(Link.new(url:'https://www.mylink.com/with-a-large-url', slug: 'shorty2')).to be_valid
  end

  it "short method creates valid short url" do
    link = Link.create(url: "https://www.mylink.com/with-a-large-url", slug: "shorty")
    expect(link.short).to eq("https://www.mylink.com/s/shorty")
  end

  it "shorten method creates valid short url" do

    expect(Link.shorten("https://www.mylink.com/with-a-large-url", "shorty4")).to eq("https://www.mylink.com/s/shorty4")
  end

end
