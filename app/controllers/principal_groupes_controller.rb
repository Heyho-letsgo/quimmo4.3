class PrincipalGroupesController < ApplicationController
  before_action :set_principal_groupe, only: [:show, :edit, :update, :destroy]

  # GET /principal_groupes
  # GET /principal_groupes.json
  def index
    @principal_groupes = PrincipalGroupe.all
  end

  # GET /principal_groupes/1
  # GET /principal_groupes/1.json
  def show
  end

  # GET /principal_groupes/new
  def new
    @principal_groupe = PrincipalGroupe.new
  end

  # GET /principal_groupes/1/edit
  def edit
  end

  # POST /principal_groupes
  # POST /principal_groupes.json
  def create
    @principal_groupe = PrincipalGroupe.new(principal_groupe_params)

    respond_to do |format|
      if @principal_groupe.save
        format.html { redirect_to @principal_groupe, notice: 'Principal groupe was successfully created.' }
        format.json { render :show, status: :created, location: @principal_groupe }
      else
        format.html { render :new }
        format.json { render json: @principal_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /principal_groupes/1
  # PATCH/PUT /principal_groupes/1.json
  def update
    respond_to do |format|
      if @principal_groupe.update(principal_groupe_params)
        format.html { redirect_to @principal_groupe, notice: 'Principal groupe was successfully updated.' }
        format.json { render :show, status: :ok, location: @principal_groupe }
      else
        format.html { render :edit }
        format.json { render json: @principal_groupe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /principal_groupes/1
  # DELETE /principal_groupes/1.json
  def destroy
    @principal_groupe.destroy
    respond_to do |format|
      format.html { redirect_to principal_groupes_url, notice: 'Principal groupe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_principal_groupe
      @principal_groupe = PrincipalGroupe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def principal_groupe_params
      params.require(:principal_groupe).permit(:name)
    end
end
