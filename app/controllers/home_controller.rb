class HomeController < ApplicationController
  PRODUCT_COUNT=100
  LIMITED_PRODUCT_NUMBER=20
  def index
    if params[:page]
    @page=(params[:page].to_i)
    else
      @page=1
      end
    @last_page=(PRODUCT_COUNT/LIMITED_PRODUCT_NUMBER)
    @fist_page=1
    @product=[]
    (1..PRODUCT_COUNT).each do |i|
  index={
        :number=>"#{i}"
  }

  @product.push(index)
    end
    @product=@product[ (@page-1) * LIMITED_PRODUCT_NUMBER,LIMITED_PRODUCT_NUMBER]
  end
end
