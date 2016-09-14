class EvidenceMethodsController < ApplicationController
  before_action :set_evidence_method, only: [:show, :edit, :update, :destroy]

  # GET /evidence_methods
  # GET /evidence_methods.json
  def index
    @evidence_methods = EvidenceMethod.all
  end

  # GET /evidence_methods/1
  # GET /evidence_methods/1.json
  def show
  end

  # GET /evidence_methods/new
  def new
    @evidence_method = EvidenceMethod.new
  end

  # GET /evidence_methods/1/edit
  def edit
  end

  # POST /evidence_methods
  # POST /evidence_methods.json
  def create
    @evidence_method = EvidenceMethod.new(evidence_method_params)

    respond_to do |format|
      if @evidence_method.save
        format.html { redirect_to @evidence_method, notice: 'Evidence method was successfully created.' }
        format.json { render :show, status: :created, location: @evidence_method }
      else
        format.html { render :new }
        format.json { render json: @evidence_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evidence_methods/1
  # PATCH/PUT /evidence_methods/1.json
  def update
    respond_to do |format|
      if @evidence_method.update(evidence_method_params)
        format.html { redirect_to @evidence_method, notice: 'Evidence method was successfully updated.' }
        format.json { render :show, status: :ok, location: @evidence_method }
      else
        format.html { render :edit }
        format.json { render json: @evidence_method.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evidence_methods/1
  # DELETE /evidence_methods/1.json
  def destroy
    @evidence_method.destroy
    respond_to do |format|
      format.html { redirect_to evidence_methods_url, notice: 'Evidence method was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evidence_method
      @evidence_method = EvidenceMethod.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evidence_method_params
      params.fetch(:evidence_method, {})
    end
end
