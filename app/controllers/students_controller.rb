class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
    user = @student.build_user
    @student.interests.build
  end

  def edit
    # should have a user associated with student, but just in case...
    user = @student.build_user
    @student.interests.build
  end

  def create
    @student = Student.new(student_params)

    if @student.save
      if !current_user
        session[:user_id] = @student.user.id
      end
      redirect_to @student, notice: "#{@student.proper_name} was added to the system."
    else
      render action: 'new'
    end
  end

  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      reset_role_param
      params.require(:student).permit(:first_name, :last_name, :gender, :dorm, :class_year, :user_id, :active, user_attributes: [:id, :username, :password, :password_confirmation, :role, :active], interests_attributes: [:id, :name, :_destroy])
    end

    def reset_role_param
      params[:student][:user_attributes][:role] = "student"
    end
end
