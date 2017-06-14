class SecretsController < ApplicationController
  def index
      @secrets = Secret.all
      @secret_ids = current_user.secrets_liked_ids
  end

  def create
      user = current_user
      secret = Secret.create(sercret_params.merge(user:user))
      redirect_to "/users/#{user.id}"
  end
  def delete
      user = current_user
      secret = Secret.find(params[:id])
      secret.destroy
      redirect_to "/users/#{user.id}"
  end
  private
    def sercret_params
        params.require(:secret).permit(:content)
    end
end
