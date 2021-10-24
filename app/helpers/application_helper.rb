module ApplicationHelper
  def main_nav_class(page_url)
    return 'nav-link active' if current_page?(page_url)

    'nav-link'
  end

  def main_nav_aria(page_url)
    return 'page' if current_page?(page_url)

    false
  end
end
