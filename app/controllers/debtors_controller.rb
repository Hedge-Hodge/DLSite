class DebtorsController < ApplicationController
  before_action :set_debtor, only: [:show, :edit, :update, :destroy]
  before_action :get_deal
  before_action :get_user, only: [:show, :edit, :update, :destroy]

  # GET /debtors
  # GET /debtors.json
  def index
    @debtors = @deal.debtors
  end

  # GET /debtors/1
  # GET /debtors/1.json
  def show
  end

  # GET /debtors/new
  def new
    @debtor = @deal.debtors.build
  end

  # GET /debtors/1/edit
  def edit
  end

  # POST /debtors
  # POST /debtors.json
  def create
    @debtor = @deal.debtors.build(debtor_params)

    respond_to do |format|
      if @debtor.save
        format.html { redirect_to deal_debtors_path(@deal), notice: 'Debtor was successfully created.' }
        format.json { render :show, status: :created, location: @debtor }
      else
        format.html { render :new }
        format.json { render json: @debtor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /debtors/1
  # PATCH/PUT /debtors/1.json
  def update
    respond_to do |format|
      if @debtor.update(debtor_params)
        format.html { redirect_to @debtor, notice: 'Debtor was successfully updated.' }
        format.json { render :show, status: :ok, location: @debtor }
      else
        format.html { render :edit }
        format.json { render json: @debtor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debtors/1
  # DELETE /debtors/1.json
  def destroy
    @debtor.destroy
    respond_to do |format|
      format.html { redirect_to debtors_url, notice: 'Debtor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debtor
      @debtor = Deal.debtors.find(params[:id])
    end

    def get_deal
      @deal = Deal.find(params[:deal_id])
    end

    def get_user
      @user = User.find(params[:user_id])
    end
    # Only allow a list of trusted parameters through.
    def debtor_params
      params.fetch(:debtor, {})
    end
end
