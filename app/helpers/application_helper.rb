module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = t('app.name')
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  # Returns 'active' if the current path is the active class, otherwise empty
  def active?(test_path)
    return 'active' if current_page? test_path
  end

end
