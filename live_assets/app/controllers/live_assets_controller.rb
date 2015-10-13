class LiveAssetsController < ApplicationController
  include ActionController::Live
  def index
  end
  def sse
    response.headers["Cache-Control"] = "no-cache"
    response.headers["Content-Type"] = "text/event-stream"
    while true
      IO.popen('ps -e') do |f|
        ps = f.read.gsub("\n","<br/>");
        response.stream.write "event: xxx\ndata: {\"z\":\"#{ps}\"}\n\n"
      end
    end
  rescue IOError
    response.stream.close
  end
end
