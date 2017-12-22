require 'rubygems'
require 'fileutils'

directory = ARGV[0]

@files = Dir["#{directory}*.jpg"]

@other_files = Dir["#{directory}*.JPG"]
  
#puts @files

@files.each do |single_file|
	
	filename = single_file.to_s.split('/').last
	filename_split1 = single_file.to_s.split('.jpg').first
	filename3 = filename_split1+"_resize.jpg"

#	puts filename
#	puts filename3

	if filename.include?('resize') == false && File.exist?(filename3) == false
		puts "converting #{single_file}"
		puts "convert #{single_file} -resize 1008x756 #{filename3}"
		system "convert #{single_file} -resize 1008x756 #{filename3}"
	else
		puts "#{single_file} already resized"
	end
end

@other_files.each do |single_file|
	
	filename = single_file.to_s.split('/').last
	filename_split1 = single_file.to_s.split('.JPG').first
	filename3 = filename_split1+"_resize.JPG"

#	puts filename
#	puts filename3

	if filename.include?('resize') == false && File.exist?(filename3) == false
		puts "converting #{single_file}"
		puts "convert #{single_file} -resize 1008x756 #{filename3}"
		system "convert #{single_file} -resize 1008x756 #{filename3}"
	else
		puts "#{single_file} already resized"
	end
end