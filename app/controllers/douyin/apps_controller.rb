module Douyin
  class AppsController < BaseController
    skip_before_action :verify_authenticity_token, raise: false if whether_filter(:verify_authenticity_token)
    before_action :set_app, only: [:show]

    def show
      render json: { challenge: params.dig(:content, :challenge) }
    end

    private
    def set_app
      @app = App.find_by appid: params[:appid]
    end

  end
end
