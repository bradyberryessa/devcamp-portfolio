module DefaultPageContent
  extend ActiveSupport::Concern

included do
  before_action :set_page_defaults
end

  def set_page_defaults
    @page_title = "DevCamp Portfolio | Brady's Portfolio Website"
    @seo_keywords = "Brady Berryessa portfolio"
  end
end