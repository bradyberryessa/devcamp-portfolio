class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
    @skills = Skill.all
    @page_title = "About Brady Berryessa"

  end

  def contact
    @page_title = "Contact Me"

  end

  def tech_news
    @tweets = SocialTool.twitter_search
    @page_title = "Recent Tech News"

  end
end