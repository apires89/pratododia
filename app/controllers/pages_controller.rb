require 'search.rb'

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  layout "landing"

  def home
    @search = SearchService.new("bacalhau")
  end

  def search
  end
end
