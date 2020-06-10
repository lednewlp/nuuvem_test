class HomeController < ApplicationController
  def trash_em_all
    @trash_em_all = Order.all.destroy_all
    redirect_to root_url, notice: 'All Items Were Successfuly Deleted.'

  end
end
