module LatexResume
	require 'colorize'


	root = File.expand_path( "../latex_resume", __FILE__ )

	require File.join( root, 'railtie' )
end
