class ManagersController < ApplicationController
  before_action :set_manager, only: [:show, :edit, :update, :destroy]

  def index
    @managers = Manager.all
  end

  def show
  end

  def new
    @manager = Manager.new
  end

  def edit
  end

  def create
    @manager = Manager.new(manager_params)

    respond_to do |format|
      if @manager.save
        format.html { redirect_to @manager, notice: 'Manager was successfully created.' }
        format.json { render action: 'show', status: :created, location: @manager }
      else
        format.html { render action: 'new' }
        format.json { render json: @manager.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @manager.update(manager_params)
        format.html { redirect_to @manager, notice: 'Manager was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @manager.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @manager.destroy
    respond_to do |format|
      format.html { redirect_to managers_url }
      format.json { head :no_content }
    end
  end

private

  def set_manager
    @manager = Manager.find(params[:id])
  end

  def manager_params
    params.require(:manager).permit(:name)
  end
end
