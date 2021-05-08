module JobsHelper

  def current_user?(user)
    user == current_user
  end

  def sitter_present?
    if @job.si
  end

private

  # confirms the correct user.
  # def correct_user
  #   @user = User.find(params[:user_id])
  #   redirect_to 'login' unless current_user?(@user)
  # end
end
