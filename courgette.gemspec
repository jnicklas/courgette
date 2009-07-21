# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{courgette}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jonas Nicklas"]
  s.date = %q{2009-07-22}
  s.description = %q{Courgette is a Rails engine which makes your feature files viewable through
your browser. Install and browse to:

    /features

Voilá, pretty list of features. Great for communicating with the customer.}
  s.email = ["jonas.nicklas@gmail.com"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt", "fixture_rails_root/public/robots.txt"]
  s.files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "app/controllers/features_controller.rb", "app/views/features/index.html.erb", "app/views/features/show.html.erb", "app/views/layouts/courgette.html.erb", "config/routes.rb", "courgette.gemspec", "features/list_features.feature", "features/show_feature.feature", "features/step_definitions/courgette_steps.rb", "features/step_definitions/webrat_steps.rb", "features/support/env.rb", "fixture_rails_root/README", "fixture_rails_root/Rakefile", "fixture_rails_root/app/controllers/application_controller.rb", "fixture_rails_root/app/helpers/application_helper.rb", "fixture_rails_root/app/views/home/index.html.erb", "fixture_rails_root/app/views/layouts/application.html.erb", "fixture_rails_root/config/boot.rb", "fixture_rails_root/config/database.yml", "fixture_rails_root/config/environment.rb", "fixture_rails_root/config/environments/development.rb", "fixture_rails_root/config/environments/production.rb", "fixture_rails_root/config/environments/test.rb", "fixture_rails_root/config/initializers/backtrace_silencers.rb", "fixture_rails_root/config/initializers/inflections.rb", "fixture_rails_root/config/initializers/mime_types.rb", "fixture_rails_root/config/initializers/new_rails_defaults.rb", "fixture_rails_root/config/initializers/session_store.rb", "fixture_rails_root/config/locales/en.yml", "fixture_rails_root/config/routes.rb", "fixture_rails_root/db/development.sqlite3", "fixture_rails_root/db/migrate/20090720193349_add_users.rb", "fixture_rails_root/db/schema.rb", "fixture_rails_root/db/test.sqlite3", "fixture_rails_root/doc/README_FOR_APP", "fixture_rails_root/features/step_definitions/webrat_steps.rb", "fixture_rails_root/features/support/env.rb", "fixture_rails_root/features/support/paths.rb", "fixture_rails_root/features/user_eats_rabbits.feature", "fixture_rails_root/features/visitor_transforms.feature", "fixture_rails_root/lib/tasks/cucumber.rake", "fixture_rails_root/public/404.html", "fixture_rails_root/public/422.html", "fixture_rails_root/public/500.html", "fixture_rails_root/public/favicon.ico", "fixture_rails_root/public/images/rails.png", "fixture_rails_root/public/index.html", "fixture_rails_root/public/javascripts/application.js", "fixture_rails_root/public/javascripts/controls.js", "fixture_rails_root/public/javascripts/dragdrop.js", "fixture_rails_root/public/javascripts/effects.js", "fixture_rails_root/public/javascripts/prototype.js", "fixture_rails_root/public/robots.txt", "fixture_rails_root/script/about", "fixture_rails_root/script/console", "fixture_rails_root/script/cucumber", "fixture_rails_root/script/dbconsole", "fixture_rails_root/script/destroy", "fixture_rails_root/script/generate", "fixture_rails_root/script/performance/benchmarker", "fixture_rails_root/script/performance/profiler", "fixture_rails_root/script/plugin", "fixture_rails_root/script/runner", "fixture_rails_root/script/server", "fixture_rails_root/spec/controllers/home_controller_spec.rb", "fixture_rails_root/spec/helpers/home_helper_spec.rb", "fixture_rails_root/spec/views/home/index.html.erb_spec.rb", "fixture_rails_root/test/fixtures/users.yml", "fixture_rails_root/test/performance/browsing_test.rb", "fixture_rails_root/test/test_helper.rb", "fixture_rails_root/test/unit/user_test.rb", "lib/courgette.rb", "lib/courgette/feature.rb", "script/console", "script/destroy", "script/generate", "spec/controllers/features_controller_spec.rb", "spec/courgette_spec.rb", "spec/feature_spec.rb", "spec/spec_helper.rb", "test/test_courgette.rb", "test/test_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/jnicklas/courgette}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{courgette}
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{Courgette is a Rails engine which makes your feature files viewable through your browser}
  s.test_files = ["test/test_courgette.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<cucumber>, [">= 0.3.90"])
      s.add_development_dependency(%q<hoe>, [">= 2.3.2"])
    else
      s.add_dependency(%q<cucumber>, [">= 0.3.90"])
      s.add_dependency(%q<hoe>, [">= 2.3.2"])
    end
  else
    s.add_dependency(%q<cucumber>, [">= 0.3.90"])
    s.add_dependency(%q<hoe>, [">= 2.3.2"])
  end
end
