# Title: Simple Garmin tag for Jekyll
# Author: Ted Bradley http://monkeysandtea.com
# Description: easily embed a Garmin iframe using only the activity id. Has to be set to public though.
#
# Syntax {% garmin activityId [width height] %}
#
# Example:
# {% garmin 123456 465 548 %}
#
# Output:
# <iframe width='465' height='548' frameborder='0' src='http://connect.garmin.com:80/activity/embed/123456'></iframe>
#

module Jekyll

  class GarminTag < Liquid::Tag
    @activity = nil
    @height = ''
    @width = ''

    def initialize(tag_name, markup, tokens)
	if markup =~ /^(\d+)[ \t](\d+)[ \t](\d+)/
		@activity = $1
		@width = $2
		@height = $3
	else
      		@activity = markup
		@width = 465
		@height = 548
	end
      super
    end

    def render(context)
      output = super
		garmin = "<iframe width='#{@width}' height='#{@height}' frameborder='0' src='http://connect.garmin.com:80/activity/embed/#{@activity}'></iframe>"
    end
  end
end

Liquid::Template.register_tag('garmin', Jekyll::GarminTag)