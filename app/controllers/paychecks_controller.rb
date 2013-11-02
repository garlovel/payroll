class PaychecksController < ApplicationController
  before_action :set_paycheck, only: [:show, :edit, :update, :destroy]

  # GET /paychecks
  # GET /paychecks.json
  def index
    @paychecks = Paycheck.all
  end

  # GET /paychecks/1
  # GET /paychecks/1.json
  def show
  end

  # GET /paychecks/new
  def new
    @paycheck = Paycheck.new
  end

  # GET /paychecks/1/edit
  def edit
  end

  # POST /paychecks
  # POST /paychecks.json
  def create
    @paycheck = Paycheck.new(paycheck_params)

    respond_to do |format|
      if @paycheck.save
        format.html { redirect_to @paycheck, notice: 'Paycheck was successfully created.' }
        format.json { render action: 'show', status: :created, location: @paycheck }
      else
        format.html { render action: 'new' }
        format.json { render json: @paycheck.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paychecks/1
  # PATCH/PUT /paychecks/1.json
  def update
    respond_to do |format|
      if @paycheck.update(paycheck_params)
        format.html { redirect_to @paycheck, notice: 'Paycheck was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @paycheck.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paychecks/1
  # DELETE /paychecks/1.json
  def destroy
    @paycheck.destroy
    respond_to do |format|
      format.html { redirect_to paychecks_url }
      format.json { head :no_content }
    end
  end
  
  def update_amounts
    allowance = 3900
    ss_tax_rate = 0.0620
    mc_tax_rate = 0.0145
    puts params.inspect
    units = params[:units].to_f
    pay_rate = params[:rate].to_f
    schedule = Schedule.find(params[:schedule])
    employee = Employee.find(params[:employee])
    period = schedule.period.downcase
    factor = schedule.factor.to_f
    puts "#{units} #{pay_rate} #{factor}"
    @gross = (units*pay_rate/factor)
    @groos.round(2)
    @css = (@gross*ss_tax_rate).round(2)
    @cmc = (@gross*mc_tax_rate).round(2)
    @ess = (@gross*ss_tax_rate).round(2)
    @emc = (@gross*mc_tax_rate).round(2)
    tax_rate_group = Rate.where(:period => period).where(:status => employee.status.downcase).all
    tax_rate_group.each do |tax_rate|
      if tax_rate.bracket <= @gross
        @tax_rate = tax_rate
      end
    end
    taxable = (@gross - employee.exemptions * allowance / schedule.occur).round(0)
    @fit = @tax_rate.base + (taxable - @tax_rate.bracket) * (@tax_rate.rate + employee.additional)
    @net = @gross - (@fit + @ess + @emc)
    respond_to do |format|
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paycheck
      @paycheck = Paycheck.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paycheck_params
      params.require(:paycheck).permit(:employee_id, :schedule_id, :units, :date, :gross, :css, :cmc, :net, :fit, :ess, :emc, :check_no, :issued, :rate)
    end
end
