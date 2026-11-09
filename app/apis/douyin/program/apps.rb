# frozen_string_literal: true

module Douyin::Program
  module Apps
    BASE = 'https://open.douyin.com/api/apps/v1/'

    def qrcode_create( app: 'douyin')
      r = post 'qrcode/create'
    end

  end
end
