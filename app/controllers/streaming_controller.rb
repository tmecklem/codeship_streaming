require 'csv'

class StreamingController < ApplicationController
  include ActionController::Live

  def stream
    self.response.headers['Content-Type'] = 'text/csv'
    100.times do |i|
      self.response.stream.write "Some data, #{i}\n"
    end
  ensure
    self.response.stream.close
  end
end
