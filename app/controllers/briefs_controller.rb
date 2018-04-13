class BriefsController < ProtectedController
  before_action :set_brief, only: [:show, :update, :destroy]

  # GET /briefs
  def index
    @briefs = current_user.briefs.all

    render json: @briefs
  end

  # GET /briefs/1
  def show
    render json: @brief
  end

  # POST /briefs
  def create
    # set create action to only be able to be done by current current_user
    @brief = current_user.briefs.build(brief_params)

    # Brief.new(brief_params)

    if @brief.save
      render json: @brief, status: :created
      # , location: @brief
    else
      render json: @brief.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /briefs/1
  def update
    if @brief.update(brief_params)
      render json: @brief
    else
      render json: @brief.errors, status: :unprocessable_entity
    end
  end

  # DELETE /briefs/1
  def destroy
    @brief.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brief
      @brief = current_user.briefs.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def brief_params
      params.require(:brief).permit(:title, :subject, :body_text, :created_at, :updated_at)
    end
end
