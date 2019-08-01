require 'rails_helper'

RSpec.describe RssUrlController, type: :controller do
    describe "GET rss_urls#index" do
        context "when there are no urls" do
            it "should show no urls present" do
                visit rss_urls_path
                page.should have_conent("There are no urls in the database, please add some using the button below.")
            end
        end

        context "when there are some urls" do
            it "should show the urls from the databse" do
                one = RssUrl.create(url: "https://rss.nytimes.com/services/xml/rss/nyt/World.xml")
                two = RssUrl.create(url: "https://rss.nytimes.com/services/xml/rss/nyt/Education.xml")
                arr = [one, two]
                arr.each do |url|
                    page.should have_content url.url
                end
            end
        end
    end
end
