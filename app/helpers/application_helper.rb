module ApplicationHelper
  def title(page_title)
    content_for :title, (page_title.try(:to_s) || 'Blog')
  end
end
