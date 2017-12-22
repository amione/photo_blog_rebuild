require 'rubygems'
require 'fileutils'

directory = ARGV[0]

directory = "/home/amione/photo_blog_rebuild/uploads"
  
fix_dir = File.join(directory, "/")
  
@files = Dir["#{fix_dir}/*.jpg"]
  
puts @files

1008x756

@files.each do |single_file|
	filename_split1 = single_file.to_s.split('.jpg').first
	filename2 = filename_split1.split('//').last
	puts filename2
end