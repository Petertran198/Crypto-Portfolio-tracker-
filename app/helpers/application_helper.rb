module ApplicationHelper

  # Returns the full title on a per-page basis. (page_title can be called anything)
  def full_title(page_title = '')
    base_title = "CryptoPort"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end


  def copyright_generator
    TranViewTool::Renderer.copyright('Peter Tran','All Rights Reserved')
  end

  
end
