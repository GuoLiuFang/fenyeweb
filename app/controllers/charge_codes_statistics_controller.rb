class ChargeCodesStatisticsController < ApplicationController
  before_action :set_charge_codes_statistic, only: [:show, :edit, :update, :destroy]

  # GET /charge_codes_statistics
  # GET /charge_codes_statistics.json
  def index
    @charge_codes_statistics = ChargeCodesStatistic.order('created_at DESC').page(params[:page]).per(15)
    # @charge_codes_statistics = ChargeCodesStatistic.all
  end

  # GET /charge_codes_statistics/1
  # GET /charge_codes_statistics/1.json
  def show
  end

  # GET /charge_codes_statistics/new
  def new
    @charge_codes_statistic = ChargeCodesStatistic.new
  end

  # GET /charge_codes_statistics/1/edit
  def edit
  end

  # POST /charge_codes_statistics
  # POST /charge_codes_statistics.json
  def create
    @charge_codes_statistic = ChargeCodesStatistic.new(charge_codes_statistic_params)

    respond_to do |format|
      if @charge_codes_statistic.save
        format.html { redirect_to @charge_codes_statistic, notice: 'Charge codes statistic was successfully created.' }
        format.json { render :show, status: :created, location: @charge_codes_statistic }
      else
        format.html { render :new }
        format.json { render json: @charge_codes_statistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charge_codes_statistics/1
  # PATCH/PUT /charge_codes_statistics/1.json
  def update
    respond_to do |format|
      if @charge_codes_statistic.update(charge_codes_statistic_params)
        format.html { redirect_to @charge_codes_statistic, notice: 'Charge codes statistic was successfully updated.' }
        format.json { render :show, status: :ok, location: @charge_codes_statistic }
      else
        format.html { render :edit }
        format.json { render json: @charge_codes_statistic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charge_codes_statistics/1
  # DELETE /charge_codes_statistics/1.json
  def destroy
    @charge_codes_statistic.destroy
    respond_to do |format|
      format.html { redirect_to charge_codes_statistics_url, notice: 'Charge codes statistic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charge_codes_statistic
      @charge_codes_statistic = ChargeCodesStatistic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charge_codes_statistic_params
      params.require(:charge_codes_statistic).permit(:charge_code_id, :charge_code_amount, :charge_code_name, :charge_code_dest_number, :charge_code_instruc_t, :charge_code_instruc_no_t, :yewucode_name, :union_name)
    end
end
