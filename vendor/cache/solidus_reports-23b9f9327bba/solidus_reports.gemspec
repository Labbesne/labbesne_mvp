# -*- encoding: utf-8 -*-
# stub: solidus_reports 1.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "solidus_reports".freeze
  s.version = "1.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "homepage_uri" => "http://github.com/solidusio-contrib/solidus_reports", "source_code_uri" => "http://github.com/solidusio-contrib/solidus_reports" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jonathan Tapia".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-02-13"
  s.description = "Reports module from Solidus core".freeze
  s.email = "jonathan.tapia@magmalabs.io".freeze
  s.files = [".circleci/config.yml".freeze, ".gem_release.yml".freeze, ".github/stale.yml".freeze, ".gitignore".freeze, ".rspec".freeze, ".rubocop.yml".freeze, ".rubocop_todo.yml".freeze, "Gemfile".freeze, "LICENSE".freeze, "README.md".freeze, "Rakefile".freeze, "app/assets/javascripts/spree/backend/solidus_reports.js".freeze, "app/assets/javascripts/spree/frontend/solidus_reports.js".freeze, "app/assets/stylesheets/spree/backend/solidus_reports.css".freeze, "app/assets/stylesheets/spree/frontend/solidus_reports.css".freeze, "app/controllers/spree/admin/reports_controller.rb".freeze, "app/models/solidus_reports/configuration.rb".freeze, "app/models/spree/permission_sets/report_display.rb".freeze, "app/views/spree/admin/reports/index.html.erb".freeze, "app/views/spree/admin/reports/sales_total.html.erb".freeze, "app/views/spree/admin/shared/_report_order_criteria.html.erb".freeze, "bin/console".freeze, "bin/rails".freeze, "bin/setup".freeze, "config/locales/en.yml".freeze, "config/routes.rb".freeze, "lib/generators/solidus_reports/install/install_generator.rb".freeze, "lib/solidus_reports.rb".freeze, "lib/solidus_reports/engine.rb".freeze, "lib/solidus_reports/factories.rb".freeze, "lib/solidus_reports/version.rb".freeze, "solidus_reports.gemspec".freeze, "spec/controllers".freeze, "spec/controllers/spree".freeze, "spec/controllers/spree/admin".freeze, "spec/controllers/spree/admin/reports_controller_spec.rb".freeze, "spec/features".freeze, "spec/features/admin".freeze, "spec/features/admin/homepage_spec.rb".freeze, "spec/features/admin/reports_spec.rb".freeze, "spec/models".freeze, "spec/models/spree".freeze, "spec/models/spree/permission_sets".freeze, "spec/models/spree/permission_sets/report_display_spec.rb".freeze, "spec/spec_helper.rb".freeze, "spec/support".freeze, "spec/support/ability.rb".freeze, "spec/support/activemodel_mocks.rb".freeze, "spec/support/dummy_ability.rb".freeze, "spec/support/factories.rb".freeze]
  s.homepage = "http://github.com/solidusio-contrib/solidus_reports".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new("~> 2.4".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Reports module from Solidus core".freeze
  s.test_files = ["spec/features".freeze, "spec/features/admin".freeze, "spec/features/admin/reports_spec.rb".freeze, "spec/features/admin/homepage_spec.rb".freeze, "spec/support".freeze, "spec/support/activemodel_mocks.rb".freeze, "spec/support/dummy_ability.rb".freeze, "spec/support/ability.rb".freeze, "spec/support/factories.rb".freeze, "spec/models".freeze, "spec/models/spree".freeze, "spec/models/spree/permission_sets".freeze, "spec/models/spree/permission_sets/report_display_spec.rb".freeze, "spec/spec_helper.rb".freeze, "spec/controllers".freeze, "spec/controllers/spree".freeze, "spec/controllers/spree/admin".freeze, "spec/controllers/spree/admin/reports_controller_spec.rb".freeze]

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<solidus_core>.freeze, [">= 2.5", "< 3"])
      s.add_runtime_dependency(%q<solidus_support>.freeze, ["~> 0.5"])
      s.add_development_dependency(%q<rspec-activemodel-mocks>.freeze, [">= 0"])
      s.add_development_dependency(%q<solidus_dev_support>.freeze, [">= 0"])
    else
      s.add_dependency(%q<solidus_core>.freeze, [">= 2.5", "< 3"])
      s.add_dependency(%q<solidus_support>.freeze, ["~> 0.5"])
      s.add_dependency(%q<rspec-activemodel-mocks>.freeze, [">= 0"])
      s.add_dependency(%q<solidus_dev_support>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<solidus_core>.freeze, [">= 2.5", "< 3"])
    s.add_dependency(%q<solidus_support>.freeze, ["~> 0.5"])
    s.add_dependency(%q<rspec-activemodel-mocks>.freeze, [">= 0"])
    s.add_dependency(%q<solidus_dev_support>.freeze, [">= 0"])
  end
end
