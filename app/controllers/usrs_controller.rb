class UsrsController < ApplicationController
  before_action :set_usr, only: [:show, :edit, :update, :destroy]
  before_action do |c| 
    raise ActionController::RoutingError.new("Not Found") if not current_user.try(:is_admin?) 
  end

  # GET /usrs
  # GET /usrs.json
  def index
    @usrs = User.all
  end

  # GET /usrs/1
  # GET /usrs/1.json
  def show
  end

  # GET /usrs/new
  def new
    @usr = User.new
  end

  # GET /usrs/1/edit
  def edit
  end

  # POST /usrs
  # POST /usrs.json
  def create
    @usr = User.new(usr_params)

    respond_to do |format|
      if @usr.save
        format.html { redirect_to usr_url(@usr), notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @usr }
      else
        format.html { render :new }
        format.json { render json: @usr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usrs/1
  # PATCH/PUT /usrs/1.json
  def update
    respond_to do |format|
      if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
        params[:user].delete(:password)
        params[:user].delete(:password_confirmation)
      end
      if @usr.update(usr_params)
        format.html { redirect_to usr_url(@usr), notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @usr }
      else
        format.html { render :edit }
        format.json { render json: @usr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usrs/1
  # DELETE /usrs/1.json
  def destroy
    @usr.destroy
    respond_to do |format|
      format.html { redirect_to usrs_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usr
      @usr = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usr_params
      params.require(:user).permit(:email, :password, :password_confirmation, :is_admin)
    end

    def check_admin
      if current_user.try(:admin?)
        
      end
    end
end
