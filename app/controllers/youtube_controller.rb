require 'rexml/document'
require 'cgi'
require 'open-uri'

class YoutubeController < ApplicationController

	def get_info
		client = YouTubeIt::Client.new
		@video = client.video_by(params[:video_id])
	end
	
end
