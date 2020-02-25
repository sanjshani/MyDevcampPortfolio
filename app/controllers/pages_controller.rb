class PagesController < ApplicationController
  def home
  	@posts = Blog.all
  	@skills = Skill.all
  end

  def about
    @skills = Skill.all
  end

  def contact
  end

  def tech_news
  	# @tweet = SocialTool.twitter_search                      << Uncomment when I gain access to twitter developer tools
  end
end
