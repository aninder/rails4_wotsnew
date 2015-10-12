class LiveAssetsController < ApplicationController
  include ActionController::Live
  def index1
    while true
     response.stream.write(Time.new.to_s)
      # response.stream.write(IO.popen("ps -e").read.gsub("\n","<br/>"))
      sleep 1
    end
    # render :text => "fdfdfF"
    rescue ClientDisconnected
      response.stream.close
  end
  def index
    response.headers["Cache-Control"] = "no-cache"
    response.headers["Content-Type"] = "text/event-stream"
    while true
      response.stream.write "event: reloadCSS\ndata: {}\n\n"
      sleep 1
    end
  rescue IOError
    response.stream.close
  end
end
