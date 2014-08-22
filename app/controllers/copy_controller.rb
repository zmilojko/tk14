class CopyController < ApplicationController
  def get
    @path = "#{Rails.root}/app/copy/#{request[:path]}.html" 
    if File.exists? @path
      p "rendering static html file #{@path}"
      render file: @path
    else 
      @path = "#{Rails.root}/app/copy/#{request[:path]}.markdown" 
      if File.exists? @path
        p "rendering static markdown file #{@path}"
        file = File.open @path
        render text: MARKDOWN.render(file.read)
      else
        raise ActionController::RoutingError.new('Not Found')
      end
    end
  end
end
