# frozen_string_literal: true

module Douyin::Program
  module Base
    BASE = 'https://developer.toutiao.com/api/apps/v2/'

    def code_to_session(anonymous_code, code)
      r = client.with_headers('Content-Type': 'application/json').with(origin: BASE).post(
        'jscode2session',
        body: {
          anonymous_code: anonymous_code,
          code: code,
          appid: @app.appid,
          secret: @app.secret
        }.to_json
      )
      logger.debug "\e[35m  Code to login: #{r.to_s}  \e[0m"
      r
    end

  end
end
