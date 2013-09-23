module UsersHelper

  def first_page_number
    if @page.to_i > 2
      @page.to_i - 2
    else
      1
    end
  end

end
