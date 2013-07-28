class LatexResumeController < ApplicationController

	@@source_tex_file = "config/resume.tex"

  def index
  end

  def source
		root_dir = 'public/tmp/src'
		public_file = File.join( root_dir, 'resume_source' )
		FileUtils.mkdir_p( root_dir )
		FileUtils.cp( @@source_tex_file, public_file )

		# dont need the 'public' in the redirect path
		redirect_path = public_file.gsub( /public/, '' )

		redirect_to redirect_path 
  end

  def generate
		root_dir = 'public/tmp/pdf'
		command = "pdflatex -output-dir=public/tmp/pdf #{@@source_tex_file}"
		output_file = File.join( root_dir, File.basename( @@source_tex_file, ".*" ) + ".pdf" )

		raise "Error running: #{command}" unless system( command )
		raise "Missing output file: #{output_file}" unless File.file? output_file

		# dont need the 'public' in the redirect path
		redirect_path = output_file.gsub( /public/, '' )
		redirect_to redirect_path
  end
end
