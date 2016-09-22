class PaperpostsController < ApplicationController
  before_action :authenticate_visitor!
  before_action :set_paperpost, only: [:show, :edit, :update, :destroy]

  # GET /paperposts
  # GET /paperposts.json
  def index
    @paperposts = Paperpost.all
  end

  # GET /paperposts/1
  # GET /paperposts/1.json
  def show
  end

  # GET /paperposts/new
  def new
    @paperpost = Paperpost.new
  end

  # GET /paperposts/1/edit
  def edit
  end

  # POST /paperposts
  # POST /paperposts.json
  def create
    @paperpost = Paperpost.new(paperpost_params)

    respond_to do |format|
      if @paperpost.save
        format.html { redirect_to @paperpost, notice: 'Paperpost was successfully created.' }
        format.json { render :show, status: :created, location: @paperpost }
      else
        format.html { render :new }
        format.json { render json: @paperpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paperposts/1
  # PATCH/PUT /paperposts/1.json
  def update
    respond_to do |format|
      if @paperpost.update(paperpost_params)
        format.html { redirect_to @paperpost, notice: 'Paperpost was successfully updated.' }
        format.json { render :show, status: :ok, location: @paperpost }
      else
        format.html { render :edit }
        format.json { render json: @paperpost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paperposts/1
  # DELETE /paperposts/1.json
  def destroy
    @paperpost.destroy
    respond_to do |format|
      format.html { redirect_to paperposts_url, notice: 'Paperpost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paperpost
      @paperpost = Paperpost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paperpost_params
      params.require(:paperpost).permit(:username, :articlecategory, :author, :title, :journalname, :description, :publishername, :pages, :volume, :status_type , :publish_date, :submitted_date)
    end
end
