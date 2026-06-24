# frozen_string_literal: true

module Douyin::Program
  module Base
    BASE = 'https://developer.toutiao.com/api/apps/v2/'

    def code_to_session(anonymous_code, code)
      r = client.with_headers('Content-Type': 'application/json').with(origin: BASE).post(
        'jscode2session',
        anonymous_code: anonymous_code,
        code: code,
        appid: @app.appid,
        secret: @app.secret,
        origin: BASE
      )
      logger.debug "\e[35m  Code to login: #{r.json}  \e[0m"
      r.json['data']
    end

  end
end
