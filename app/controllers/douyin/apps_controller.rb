module Douyin
  class AppsController < BaseController
    skip_before_action :verify_authenticity_token, raise: false if whether_filter(:verify_authenticity_token)
    before_action :set_app, only: [:login]

    def login
      @oauth_user = @app.generate_wechat_user(params[:code])

      if @oauth_user&.save
        login_by_oauth_user(@oauth_user)
      end
    end

    private
    def set_app
      @app = App.enabled.find_by appid: params[:appid]
    end

  end
end
