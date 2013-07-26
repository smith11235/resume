namespace :latex_resume do

	task :generate => :environment do
		puts "Generating resume from config/resume.tex".green.on_red
	end

end
