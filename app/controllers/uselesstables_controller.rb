class UselesstablesController < ApplicationController
  before_action :set_uselesstable, only: [:show, :edit, :update, :destroy]

  # GET /uselesstables
  # GET /uselesstables.json
  def index
    @uselesstables = Uselesstable.all
  end

  # GET /uselesstables/1
  # GET /uselesstables/1.json
  def show
  end

  # GET /uselesstables/new
  def new
    @uselesstable = Uselesstable.new
  end

  # GET /uselesstables/1/edit
  def edit
  end

  # POST /uselesstables
  # POST /uselesstables.json
  def create
    @uselesstable = Uselesstable.new(uselesstable_params)

    respond_to do |format|
      if @uselesstable.save
        format.html { redirect_to @uselesstable, notice: 'Uselesstable was successfully created.' }
        format.json { render :show, status: :created, location: @uselesstable }
      else
        format.html { render :new }
        format.json { render json: @uselesstable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /uselesstables/1
  # PATCH/PUT /uselesstables/1.json
  def update
    respond_to do |format|
      if @uselesstable.update(uselesstable_params)
        format.html { redirect_to @uselesstable, notice: 'Uselesstable was successfully updated.' }
        format.json { render :show, status: :ok, location: @uselesstable }
      else
        format.html { render :edit }
        format.json { render json: @uselesstable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uselesstables/1
  # DELETE /uselesstables/1.json
  def destroy
    @uselesstable.destroy
    respond_to do |format|
      format.html { redirect_to uselesstables_url, notice: 'Uselesstable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_uselesstable
      @uselesstable = Uselesstable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def uselesstable_params
      params.require(:uselesstable).permit(:name)
    end
end
