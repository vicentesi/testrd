module ApplicationHelper

  # Return the full title on per-page.
  def full_title(page_title)
    base_title = 'Evaluation Test Project for R.D.'
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
end
