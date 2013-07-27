namespace :latex_resume do
	def run_latex( source_file, output_file )
		command = "pdflatex -output-directory=#{File.dirname(output_file)} #{source_file}"
		puts command.red
		
=begin
clean :
	rm -f resume.log resume.aux resume.pdf resume.cls resume.out
	end
=end
	end

	task :generate => :environment do
		puts "Generating resume from config/resume.tex".green.on_red
		run_latex( 'config/resume.tex', 'public/tmp/pdf/resume.pdf' )
	end

end
