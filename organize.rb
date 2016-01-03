#!/usr/bin/env ruby

require 'find'
require 'fileutils'

class Organize
  #puts here the extensions media formats  
  ACCEPTED_MEDIA_FORMATS = [".mkv", ".mp4", ".avi"]
  #puts here the last word of the tv shows name´s  
  TV_SHOWS = ["mentalist", "theory", "thrones","flash","gotham","homeland"]
  #puts here the ignored media name  
  IGNORE_LIST = ["sample","rarbg.com","etrg.mp4"]
  def procdir(path, matches)
    
    Find.find(path) do |path|
      if !FileTest.directory?(path) then 
      matches << path if ACCEPTED_MEDIA_FORMATS.include? File.extname(path)
      end
    end
  end
  
  def initialize
  
  end

  def run!(dir_input,dir_output)
      #puts 'debug:' + dir_input.inspect
    pathes = []
    procdir(dir_input,pathes)
    pathes.each do |file|
      comp = File.basename file        # => "xyz.mp4"
      extn = File.extname  file        # => ".mp4"
      name = File.basename file, extn  # => "xyz"
      path = File.dirname  file        # => "/path/to"
      ignore = false
      IGNORE_LIST.each do |ign|
        if name.downcase.include? ign then
          ignore =true
          break
        end
      end
      
      if ignore then
        puts 'ignore: ' + name
      else
        san_name = sanitize_filename(name)
        tv_show = false
        season_epi = ""
        show_name = ""
        show_release = ""
        
        TV_SHOWS.each do |ts|
          #puts ts + ' ' + name.downcase
          parts = san_name.split('.')
          index = parts.index(ts)
          #puts index.inspect
          if index then
            season_epi = parts[index+1]
            season_epi = parts[index+2] if ['2014','2015'].include? season_epi
            season_epi.insert(0,'0') if season_epi.length < 4
            season_epi.insert(0,'s') if season_epi.length < 5
            season_epi.insert(-3,'e') if season_epi.length < 6
            tv_show = true
            #puts parts[0..index].inspect
            show_name = parts[0..index].join(" ")
            show_name.sub!('[www cpasbien me] ','')
            show_release = parts[index+2..-1].join(".")
          end
          break unless tv_show == false

        end
        
        Dir.mkdir(dir_output + 'movies\\') unless File.exists?(dir_output + 'movies\\')
        Dir.mkdir(dir_output + 'tvshows\\') unless File.exists?(dir_output + 'tvshows\\')
        new_filename = dir_output + 'movies\\'+ san_name
        if tv_show then
          dir_show = dir_output + 'tvshows\\' + show_name + '\\'
          Dir.mkdir(dir_show) unless File.exists?(dir_show)
          new_filename= dir_show+(show_name+'.'+season_epi+'.'+show_release).gsub(' ', '.')
        end
        FileUtils.cp(file,new_filename+extn) unless File.exists?(new_filename+extn)
        puts 'processed: ' +  new_filename
      end
    end
  end
  
  def sanitize_filename(name)
    # Strip out the non-ascii character
    name.downcase.gsub(/[^0-9a-z.]/, ' ').gsub(/ +/,'.')
  end
  
end

Organize.new.run!(ARGV[0],ARGV[1]) 
