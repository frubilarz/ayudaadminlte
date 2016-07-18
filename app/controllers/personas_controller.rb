class PersonasController < ApplicationController
  before_action :set_persona, only: [:show, :edit, :update, :destroy]

  def index
    @personas = Persona.paginate(:page => params[:page], :per_page => 3)
  end

 def show
 end

  def new
    @persona = Persona.new
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_persona
      @persona = Persona.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def persona_params
      params.require(:persona).permit(:nombre)
    end
end
