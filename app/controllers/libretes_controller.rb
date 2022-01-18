class LibretesController < ApplicationController
  before_action :set_librete, only: %i[ show edit update destroy ]

  # GET /libretes or /libretes.json
  def index
    @libretes = Librete.all
  end

  # GET /libretes/1 or /libretes/1.json
  def show
  end

  # GET /libretes/new
  def new
    @librete = Librete.new
  end

  # GET /libretes/1/edit
  def edit
  end

  # POST /libretes or /libretes.json
  def create
    @librete = Librete.new(librete_params)

    respond_to do |format|
      if @librete.save
        format.html { redirect_to librete_url(@librete), notice: "Librete was successfully created." }
        format.json { render :show, status: :created, location: @librete }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @librete.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /libretes/1 or /libretes/1.json
  def update
    respond_to do |format|
      if @librete.update(librete_params)
        format.html { redirect_to librete_url(@librete), notice: "Librete was successfully updated." }
        format.json { render :show, status: :ok, location: @librete }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @librete.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libretes/1 or /libretes/1.json
  def destroy
    @librete.destroy

    respond_to do |format|
      format.html { redirect_to libretes_url, notice: "Librete was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_librete
      @librete = Librete.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def librete_params
      params.require(:librete).permit(:librete, :user_id)
    end
end
