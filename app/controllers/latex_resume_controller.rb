class LatexResumeController < ApplicationController
  def index
  end

  def source
		source_tex_file = "config/resume.tex"
		root_dir = 'public/tmp/src'

		public_file = File.join( root_dir, 'resume_source' )

		FileUtils.mkdir_p( root_dir )

		FileUtils.cp( source_tex_file, public_file )

		# dont need the 'public' in the redirect path
		redirect_path = public_file.gsub( /public/, '' )

		redirect_to redirect_path 
  end

  def generate
  end
end
