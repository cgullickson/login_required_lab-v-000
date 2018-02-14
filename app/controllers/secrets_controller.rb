class SecretsController < ApplicationController

  def show
    redirect_to '/sessions/new' unless session.include? :name
  end

end
