class IdentitiesController < ApplicationController
  def new
    @identity = env['omniauth.identity']
    puts "ddddddddddddddddddddddddddddddddddddddd#{@identity.inspect}"
  end


end
