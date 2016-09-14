class SeMethodsController < ApplicationController
  before_action :set_se_method, only: [:show, :edit, :update, :destroy]

  # GET /se_methods
  # GET /se_methods.json
  def index
    @se_methods = SeMethod.all
  end

  # GET /se_methods/1
  # GET /se_methods/1.json
  def show
  end

  # GET /se_methods/new
  def new
    @se_method = SeMethod.new
  end

  # GET /se_methods/1/edit
  def edit
  end

  # POST /se_methods
  # POST /se_methods.json
  def create
    @se_method = SeMethod.new(se_method_params)

    respond_to do |format|
      if @se_method.save
        format.html { redirect_to @se_method, notice: 'Se method was successfully created.' }
        format.json { render :show, status: :created, location: @se_method }
      else
        format.html { render :new }
        format.json { render json: @se_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /se_methods/1
  # PATCH/PUT /se_methods/1.json
  def update
    respond_to do |format|
      if @se_method.update(se_method_params)
        format.html { redirect_to @se_method, notice: 'Se method was successfully updated.' }
        format.json { render :show, status: :ok, location: @se_method }
      else
        format.html { render :edit }
        format.json { render json: @se_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /se_methods/1
  # DELETE /se_methods/1.json
  def destroy
    @se_method.destroy
    respond_to do |format|
      format.html { redirect_to se_methods_url, notice: 'Se method was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_se_method
      @se_method = SeMethod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def se_method_params
      params.fetch(:se_method, {})
    end
end
