class RegistroDiariosController < ApplicationController
  before_action :set_registro_diario, only: [:show, :edit, :update, :destroy]

  # GET /registro_diarios
  # GET /registro_diarios.json
  def index
    @registro_diarios = RegistroDiario.all
  end

  # GET /registro_diarios/1
  # GET /registro_diarios/1.json
  def show
  end

  # GET /registro_diarios/new
  def new
    @registro_diario = RegistroDiario.new
    Item.all.each do |item_registro|
      novo_item = ItemRegistroDiario.new(item: item_registro)
      @registro_diario.item_registro_diarios << novo_item
    end
  end

  # GET /registro_diarios/1/edit
  def edit
  end

  # POST /registro_diarios
  # POST /registro_diarios.json
  def create
    @registro_diario = RegistroDiario.new(registro_diario_params)

    respond_to do |format|
      if @registro_diario.save
        format.html { redirect_to @registro_diario, notice: 'Registro diario was successfully created.' }
        format.json { render :show, status: :created, location: @registro_diario }
      else
        format.html { render :new }
        format.json { render json: @registro_diario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_diarios/1
  # PATCH/PUT /registro_diarios/1.json
  def update
    respond_to do |format|
      if @registro_diario.update(registro_diario_params)
        format.html { redirect_to @registro_diario, notice: 'Registro diario was successfully updated.' }
        format.json { render :show, status: :ok, location: @registro_diario }
      else
        format.html { render :edit }
        format.json { render json: @registro_diario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_diarios/1
  # DELETE /registro_diarios/1.json
  def destroy
    @registro_diario.destroy
    respond_to do |format|
      format.html { redirect_to registro_diarios_url, notice: 'Registro diario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_diario
      @registro_diario = RegistroDiario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_diario_params
      params.require(:registro_diario).permit(
        :data_registro, :item_registro_diarios_attributes => [:id, :valor, :registro_diario_id, :item_id, :_destroy, :item_attributes => [:id, :nome]])
    end
end
