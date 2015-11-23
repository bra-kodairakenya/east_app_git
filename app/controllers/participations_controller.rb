class ParticipationsController < ApplicationController

  def index
    @participations = Participation.all
  end

  def new
    @participation = Participation.new
  end

  def create
    @participation = Participation.new(participation_params)

    if @participation.save
      redirect_to @participation
    else
      render 'new'
    end
  end

  def show
    @participation = Participation.find(params[:id])
  end

  def edit
    @participation = Participation.find(params[:id])
  end

  def update
    if @participation.update(participation_params)
      redirect_to @participation
    else
      render 'edit'
    end
  end

  def destroy
    @participation = Participation.find(params[:id])
    @participation.destroy

    redirect_to managers_path
  end

  private

  def participation_params
    params.require(:participation).permit(:name, :telphone, :mail, :publish, :price, :content)
  end
end
