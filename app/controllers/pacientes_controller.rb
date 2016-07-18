class PacientesController < ApplicationController
before_action :set_paciente, only: [:mostrar, :editar, :update, :eliminar]
before_action :authenticate_user!
  def index
    @pacientes = Paciente.paginate(:page => params[:page], :per_page => 10)
  end

  def nuevo
    @paciente = Paciente.new
  end

  def crear
    @paciente = Paciente.new(paciente_params)
    respond_to do |format|
      if @paciente.save
        format.html{redirect_to @paciente, notice:  'Paciente Guardado Con Exito'}
      else
        format.html{render :new}
      end
    end
  end

  def editar
  end

  def mostrar
  end

  def update
    respond_to do |format|
      if @paciente.update(paciente_params)
        format.html{redirect_to @paciente, notice: 'paciente Editado con Exito'}
      else
        format.html{render :edit}
      end
    end
  end

  def eliminar
    @paciente.destroy
    respond_to do |format|
      format.html { redirect_to pacientes_url, notice: 'Paciente eliminado con Exito.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paciente
      @paciente = Paciente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paciente_params
      params.require(:paciente).permit(:nombre,:edad, :rut, :fecha_nacimiento)
    end
end
