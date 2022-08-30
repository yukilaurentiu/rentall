class PagesController < ApplicationController
  before_action :fixed_footer, only: [:show, :edit, :mission, :vision]
  def home
  end

  private

  def fixed_footer
    @position = "fixed"
  end
end
