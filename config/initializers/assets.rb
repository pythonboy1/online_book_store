# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'
Rails.application.config.assets.precompile += %w( bootstrap.css )
Rails.application.config.assets.precompile += %w( etalage.css )
Rails.application.config.assets.precompile += %w( fwslider.css )
Rails.application.config.assets.precompile += %w( style.css )
Rails.application.config.assets.precompile += %w( jquery.fancybox.css )
Rails.application.config.assets.precompile += %w( magnific-popup.css )
Rails.application.config.assets.precompile += %w( classie.js )
Rails.application.config.assets.precompile += %w( fwslider.js )
Rails.application.config.assets.precompile += %w( jquery-ui.min.js )
Rails.application.config.assets.precompile += %w( jquery.etalage.min.js )
Rails.application.config.assets.precompile += %w( jquery.fancybox.js )
Rails.application.config.assets.precompile += %w( jquery.min.js )
Rails.application.config.assets.precompile += %w( jquery.magnific-popup.js )
Rails.application.config.assets.precompile += %w( jquery.flexisel.js )
Rails.application.config.assets.precompile += %w( responsive-nav.js )
Rails.application.config.assets.precompile += %w( uisearch.js )
Rails.application.config.assets.precompile += %w( style.js )

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
