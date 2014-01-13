# A simple tag plugin for jekyll generating GalleryView picture galleries based on a folder with pictures.
# Author: Martin Gratzer - @mgratzer
# Version: 0.1
# Site: http://www.mgratzer.com
# Plugin License: MIT
# Source: https://github.com/mgratzer/GalleryView
# GalleryView: http://spaceforaname.com/galleryview/
#
# Usage: {% gallery_view GALLERY_FOLDER_NAME %}
#
# 1) put galleryview_tag.rb in your _plugins folder
# 2) setup your site for GalleryView -> http://spaceforaname.com/galleryview/ 
#    load JavaScript and CSS files into your page
# 3) create GALLERIES_FOLDER and add folders with images (each folder represents a single gallery)
# 4) place {% gallery_view GALLERY_FOLDER_NAME %} on your site
# 5) update GalleryView options in config()

# Base folder of your gallery, relative to jekyll root
GALLERIES_FOLDER = "images/gallery"

module Jekyll
	class GalleryViewTag < Liquid::Tag

	    def initialize(tag_name, markup, tokens)
			super		
			@display = true
			params = @markup.split(',')					
			@folder = params[0].rstrip().lstrip()

			if params.count >= 2
				@display = params[1]
			end
	    end

		def render(context)	
			if @display	== true	
				script + list			
			end
		end	

		def script()
			'<script type="text/javascript">' + config() + '</script>'
		end

		# all possible options 
		# transition_speed: 2000, 		//INT - duration of panel/frame transition (in milliseconds)
		# transition_interval: 4000, 	//INT - delay between panel/frame transitions (in milliseconds)
		# easing: 'swing', 				//STRING - easing method to use for animations (jQuery provides 'swing' or 'linear', more available with jQuery UI or Easing plugin)
		# show_panels: true, 			//BOOLEAN - flag to show or hide panel portion of gallery
		# show_panel_nav: false, 		//BOOLEAN - flag to show or hide panel navigation buttons
		# enable_overlays: true, 		//BOOLEAN - flag to show or hide panel overlays
		# panel_width: 900, 			//INT - width of gallery panel (in pixels)
		# panel_height: 500, 			//INT - height of gallery panel (in pixels)
		# panel_animation: 'slide', 	//STRING - animation method for panel transitions (crossfade,fade,slide,none)
		# panel_scale: 'crop', 			//STRING - cropping option for panel images (crop = scale image and fit to aspect ratio determined by panel_width and panel_height, fit = scale image and preserve original aspect ratio)
		# overlay_position: 'bottom', 	//STRING - position of panel overlay (bottom, top)
		# pan_images: true,				//BOOLEAN - flag to allow user to grab/drag oversized images within gallery
		# pan_style: 'drag',			//STRING - panning method (drag = user clicks and drags image to pan, track = image automatically pans based on mouse position
		# pan_smoothness: 15,			//INT - determines smoothness of tracking pan animation (higher number = smoother)
		# start_frame: 1, 				//INT - index of panel/frame to show first when gallery loads
		# show_filmstrip: true, 		//BOOLEAN - flag to show or hide filmstrip portion of gallery
		# show_filmstrip_nav: true, 	//BOOLEAN - flag indicating whether to display navigation buttons
		# enable_slideshow: false,		//BOOLEAN - flag indicating whether to display slideshow play/pause button
		# autoplay: false,				//BOOLEAN - flag to start slideshow on gallery load
		# show_captions: true, 			//BOOLEAN - flag to show or hide frame captions	
		# filmstrip_size: 3, 			//INT - number of frames to show in filmstrip-only gallery
		# filmstrip_style: 'scroll', 	//STRING - type of filmstrip to use (scroll = display one line of frames, scroll filmstrip if necessary, showall = display multiple rows of frames if necessary)
		# filmstrip_position: 'bottom', //STRING - position of filmstrip within gallery (bottom, top, left, right)
		# frame_width: 164, 			//INT - width of filmstrip frames (in pixels)
		# frame_height: 80, 			//INT - width of filmstrip frames (in pixels)
		# frame_opacity: 0.5, 			//FLOAT - transparency of non-active frames (1.0 = opaque, 0.0 = transparent)
		# frame_scale: 'crop', 			//STRING - cropping option for filmstrip images (same as above)
		# frame_gap: 5, 				//INT - spacing between frames within filmstrip (in pixels)
		# show_infobar: true,			//BOOLEAN - flag to show or hide infobar
		# infobar_opacity: 1			//FLOAT - transparency for info bar
		def config()
			"$(function(){
				$('##{@folder}').galleryView({
					panel_width: 800,
					panel_height: 600,
					panel_scale: 'crop',
					panel_animation: 'crossfade',
					pan_images: true,
					pan_style: 'drag',					
					filmstrip_position: 'bottom',
					frame_opacity: 0.5,
					frame_scale: 'crop',
					frame_gap: 5	
				});
			});"
		end

		def list()
			'<ul id="'+ @folder +'">'+ imagetags() +'</ul>'
		end

		def imagetags()
			imagelist = ""
			Dir.foreach("./#{GALLERIES_FOLDER}/#{@folder}") do |file|							
				if !file.start_with?(".")
					imagelist += '<li><img src="/'+GALLERIES_FOLDER+'/'+@folder+'/'+file+'" alt="" /></li>'			
				end
			end
			imagelist
		end
	end
end

Liquid::Template.register_tag('gallery_view', Jekyll::GalleryViewTag)