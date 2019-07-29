class PeopleController < ApplicationController
# before_action :set_user

  def index
    @peoples = People.all
  end
  def new
    @people = People.new
  end
  def create
    @people = People.new(
      name: params[:name],
      city:  params[:city],
      contract_to: params[:contract_to]

    )

    # respond_to do |format|
      if @people.save
        # ExampleMailer.sample_email(@user).deliver_now
        redirect_to("/")

      # end
    end
  end
  # def set_user
  #   @people = Usefordb.find(params[:id])
  # end
  # def people_params
  #   params.require(:usefordb).permit(:Name, :City)
  # end
end
