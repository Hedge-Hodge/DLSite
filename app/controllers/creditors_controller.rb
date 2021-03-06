class CreditorsController < ApplicationController
  before_action :set_creditor, only: [:show, :edit, :update, :destroy]
  #before_action :get_deal

  # GET /creditors
  # GET /creditors.json
  def index
    @creditor = Creditor.all
  end

  # GET /creditors/1
  # GET /creditors/1.json
  def show
  end

  # GET /creditors/new
  def new
    @creditor = Creditor.new
  end

  # GET /creditors/1/edit
  def edit
  end

  # POST /creditors
  # POST /creditors.json
  def create
    @creditor = Creditor.new(creditor_params)

    respond_to do |format|
      if @creditor.save
        format.html { redirect_to @creditor, notice: 'Creditor was successfully created.' }
        format.json { render :show, status: :created, location: @creditor }
      else
        format.html { render :new }
        format.json { render json: @creditor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /creditors/1
  # PATCH/PUT /creditors/1.json
  def update
    respond_to do |format|
      if @creditor.update(creditor_params)
        format.html { redirect_to @creditor, notice: 'Creditor was successfully updated.' }
        format.json { render :show, status: :ok, location: @creditor }
      else
        format.html { render :edit }
        format.json { render json: @creditor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creditors/1
  # DELETE /creditors/1.json
  def destroy
    @creditor.destroy
    respond_to do |format|
      format.html { redirect_to creditors_url, notice: 'Creditor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creditor
      @creditor = Creditor.find(params[:id])
    end

    def get_deal
      @deal = Deal.find(params[:deal_id])
    end

    # Only allow a list of trusted parameters through.
    def creditor_params
      params.require(:creditor).permit(:deal_id, :user_id)
    end
end
