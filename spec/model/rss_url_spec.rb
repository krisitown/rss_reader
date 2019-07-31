require 'rails_helper'

RSpec.describe RssUrl, type: :model do
    context "url is a blank string" do
        it "is an invalid model" do
            rssUrl = RssUrl.create({url: ""})
            expect(rssUrl.valid?).to eq(false)
        end
    end

    context "url is a valid url" do
        it "creates a valid model" do
            rssUrl = RssUrl.create({url: "https://rss.nytimes.com/services/xml/rss/nyt/World.xml"})
            expect(rssUrl.valid?).to eq(true)
        end
    end
end