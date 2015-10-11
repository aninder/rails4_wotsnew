class PeopleController < ApplicationController
  respond_to :html, :json
  def index
    @people = Person.order("lower(name) ASC").select(:name)
    respond_to do |format|
      format.html
      format.json {render json:@people,only:[:name]}
    end
    # respond_with @people
  end
end
