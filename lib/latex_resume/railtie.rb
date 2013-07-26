class Railtie < Rails::Railtie
	rake_tasks do
		load File.expand_dir( "../tasks.rake", __FILE__ )
	end
end
