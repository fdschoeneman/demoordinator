class DemosController < ApplicationController
  before_action :set_demo, only: [:show, :edit, :update, :destroy]

  # GET /demos
  def index
    @demos = Demo.all
  end

  # GET /demos/1
  def show
  end

  # GET /demos/new
  def new
    @demo = Demo.new
  end

  # GET /demos/1/edit
  def edit
  end

  # POST /demos
  def create
    @demo = Demo.new(demo_params)

    if @demo.save
      redirect_to @demo, notice: 'Demo was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /demos/1
  def update
    if @demo.update(demo_params)
      redirect_to @demo, notice: 'Demo was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /demos/1
  def destroy
    @demo.destroy
    redirect_to demos_url, notice: 'Demo was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_demo
      @demo = Demo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def demo_params
      params.require(:demo).permit(:contractor_id, :client_id, :facilitator_id, :venue_id)
    end
end
