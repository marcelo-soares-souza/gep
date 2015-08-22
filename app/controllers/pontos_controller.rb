class PontosController < ApplicationController
  before_action :set_ponto, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :is_admin, only: [:index, :show, :new, :edit, :create, :update, :destroy]

  # GET /pontos/registrar
  # GET /pontos/registrar.json
  def registrar
    @ponto = Ponto.where("user_id = #{current_user.id}").order("created_at").last
  end

  def entrada_saida
    @last_ponto = Ponto.where("user_id = #{current_user.id}").order("created_at").last

    @ponto = Ponto.new
    @ponto.user_id = current_user.id
    @ponto.data_hora = DateTime.now
    @ponto.situacao = "Entrada"
    @ponto.situacao = "Saída" if @last_ponto.situacao.humanize == 'Entrada' if @last_ponto.present?

    @ponto.save

    flash[:notice] = "#{@ponto.situacao} Registrado em #{@ponto.data_hora}"
    redirect_to :controller => "pontos", :action => "registrar"
  end

  # GET /pontos
  # GET /pontos.json
  def index
    @pontos = Ponto.all
  end

  # GET /pontos/1
  # GET /pontos/1.json
  def show
  end

  # GET /pontos/new
  def new
    @ponto = Ponto.new
  end

  # GET /pontos/1/edit
  def edit
  end

  # POST /pontos
  # POST /pontos.json
  def create
    @ponto = Ponto.new(ponto_params)

    respond_to do |format|
      if @ponto.save
        format.html { redirect_to @ponto, notice: 'Ponto was successfully created.' }
        format.json { render :show, status: :created, location: @ponto }
      else
        format.html { render :new }
        format.json { render json: @ponto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pontos/1
  # PATCH/PUT /pontos/1.json
  def update
    respond_to do |format|
      if @ponto.update(ponto_params)
        format.html { redirect_to @ponto, notice: 'Ponto was successfully updated.' }
        format.json { render :show, status: :ok, location: @ponto }
      else
        format.html { render :edit }
        format.json { render json: @ponto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pontos/1
  # DELETE /pontos/1.json
  def destroy
    @ponto.destroy
    respond_to do |format|
      format.html { redirect_to pontos_url, notice: 'Ponto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ponto
      @ponto = Ponto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ponto_params
      params.require(:ponto).permit(:user_id, :data_hora, :situacao)
    end
end
