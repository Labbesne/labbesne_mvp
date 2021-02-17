# -*- encoding: utf-8 -*-
# stub: solidus_auth_devise 2.5.3 ruby lib

Gem::Specification.new do |s|
  s.name = "solidus_auth_devise".freeze
  s.version = "2.5.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "homepage_uri" => "https://github.com/solidusio/solidus_auth_devise", "source_code_uri" => "https://github.com/solidusio/solidus_auth_devise" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Solidus Team".freeze]
  s.bindir = "exe".freeze
  s.date = "2021-02-12"
  s.email = "contact@solidus.io".freeze
  s.files = [".circleci/config.yml".freeze, ".gem_release.yml".freeze, ".github/stale.yml".freeze, ".gitignore".freeze, ".rspec".freeze, ".rubocop.yml".freeze, "CHANGELOG.md".freeze, "Gemfile".freeze, "LICENSE".freeze, "README.md".freeze, "Rakefile".freeze, "app/mailers/spree/user_mailer.rb".freeze, "app/models/spree/user.rb".freeze, "app/overrides/spree/admin/users/edit/_add_reset_password_form.html.erb.deface".freeze, "bin/console".freeze, "bin/rails".freeze, "bin/setup".freeze, "config/initializers/devise.rb".freeze, "config/initializers/warden.rb".freeze, "config/locales/de.yml".freeze, "config/locales/en.yml".freeze, "config/locales/es.yml".freeze, "config/locales/fr.yml".freeze, "config/locales/it.yml".freeze, "config/locales/nl.yml".freeze, "config/locales/pt-BR.yml".freeze, "config/locales/tr.yml".freeze, "config/locales/zh-CN.yml".freeze, "config/routes.rb".freeze, "db/default/users.rb".freeze, "db/migrate/20101026184949_create_users.rb".freeze, "db/migrate/20101026184950_rename_columns_for_devise.rb".freeze, "db/migrate/20101214150824_convert_user_remember_field.rb".freeze, "db/migrate/20120203010234_add_reset_password_sent_at_to_spree_users.rb".freeze, "db/migrate/20120605211305_make_users_email_index_unique.rb".freeze, "db/migrate/20140904000425_add_deleted_at_to_users.rb".freeze, "db/migrate/20141002154641_add_confirmable_to_users.rb".freeze, "db/migrate/20190125170630_add_reset_password_token_index_to_spree_users.rb".freeze, "db/migrate/20200417153503_add_unconfirmed_email_to_spree_users.rb".freeze, "db/seeds.rb".freeze, "lib/controllers/backend/spree/admin/user_passwords_controller.rb".freeze, "lib/controllers/backend/spree/admin/user_sessions_controller.rb".freeze, "lib/controllers/frontend/spree/user_confirmations_controller.rb".freeze, "lib/controllers/frontend/spree/user_passwords_controller.rb".freeze, "lib/controllers/frontend/spree/user_registrations_controller.rb".freeze, "lib/controllers/frontend/spree/user_sessions_controller.rb".freeze, "lib/controllers/frontend/spree/users_controller.rb".freeze, "lib/decorators/backend/controllers/spree/admin/base_controller_decorator.rb".freeze, "lib/decorators/backend/controllers/spree/admin/orders/customer_details_controller_decorator.rb".freeze, "lib/decorators/frontend/controllers/spree/checkout_controller_decorator.rb".freeze, "lib/generators/solidus/auth/install/install_generator.rb".freeze, "lib/generators/solidus/auth/install/templates/config/initializers/devise.rb".freeze, "lib/solidus/auth.rb".freeze, "lib/solidus_auth_devise.rb".freeze, "lib/spree/auth/devise.rb".freeze, "lib/spree/auth/engine.rb".freeze, "lib/spree/auth/version.rb".freeze, "lib/spree/auth_configuration.rb".freeze, "lib/spree/authentication_helpers.rb".freeze, "lib/tasks/auth.rake".freeze, "lib/views/backend/spree/admin/shared/_navigation_footer.html.erb".freeze, "lib/views/backend/spree/admin/user_passwords/edit.html.erb".freeze, "lib/views/backend/spree/admin/user_passwords/new.html.erb".freeze, "lib/views/backend/spree/admin/user_sessions/authorization_failure.html.erb".freeze, "lib/views/backend/spree/admin/user_sessions/new.html.erb".freeze, "lib/views/backend/spree/layouts/admin/_login_nav.html.erb".freeze, "lib/views/frontend/spree/checkout/registration.html.erb".freeze, "lib/views/frontend/spree/shared/_flashes.html.erb".freeze, "lib/views/frontend/spree/shared/_login.html.erb".freeze, "lib/views/frontend/spree/shared/_login_bar.html.erb".freeze, "lib/views/frontend/spree/shared/_login_bar_items.html.erb".freeze, "lib/views/frontend/spree/shared/_user_form.html.erb".freeze, "lib/views/frontend/spree/user_mailer/confirmation_instructions.text.erb".freeze, "lib/views/frontend/spree/user_mailer/reset_password_instructions.text.erb".freeze, "lib/views/frontend/spree/user_passwords/edit.html.erb".freeze, "lib/views/frontend/spree/user_passwords/new.html.erb".freeze, "lib/views/frontend/spree/user_registrations/new.html.erb".freeze, "lib/views/frontend/spree/user_sessions/authorization_failure.html.erb".freeze, "lib/views/frontend/spree/user_sessions/new.html.erb".freeze, "lib/views/frontend/spree/users/edit.html.erb".freeze, "lib/views/frontend/spree/users/show.html.erb".freeze, "solidus_auth_devise.gemspec".freeze, "spec/controllers".freeze, "spec/controllers/spree".freeze, "spec/controllers/spree/admin".freeze, "spec/controllers/spree/admin/base_controller_spec.rb".freeze, "spec/controllers/spree/admin/user_passwords_controller_spec.rb".freeze, "spec/controllers/spree/base_controller_spec.rb".freeze, "spec/controllers/spree/checkout_controller_spec.rb".freeze, "spec/controllers/spree/products_controller_spec.rb".freeze, "spec/controllers/spree/user_passwords_controller_spec.rb".freeze, "spec/controllers/spree/user_registrations_controller_spec.rb".freeze, "spec/controllers/spree/user_sessions_controller_spec.rb".freeze, "spec/controllers/spree/users_controller_spec.rb".freeze, "spec/factories".freeze, "spec/factories/confirmed_user.rb".freeze, "spec/features".freeze, "spec/features/account_spec.rb".freeze, "spec/features/admin".freeze, "spec/features/admin/password_reset_spec.rb".freeze, "spec/features/admin/products_spec.rb".freeze, "spec/features/admin/sign_in_spec.rb".freeze, "spec/features/admin/sign_out_spec.rb".freeze, "spec/features/admin_permissions_spec.rb".freeze, "spec/features/change_email_spec.rb".freeze, "spec/features/checkout_spec.rb".freeze, "spec/features/confirmation_spec.rb".freeze, "spec/features/order_spec.rb".freeze, "spec/features/password_reset_spec.rb".freeze, "spec/features/sign_in_spec.rb".freeze, "spec/features/sign_out_spec.rb".freeze, "spec/features/sign_up_spec.rb".freeze, "spec/mailers".freeze, "spec/mailers/user_mailer_spec.rb".freeze, "spec/models".freeze, "spec/models/order_spec.rb".freeze, "spec/models/user_spec.rb".freeze, "spec/spec_helper.rb".freeze, "spec/support".freeze, "spec/support/ability.rb".freeze, "spec/support/authentication_helpers.rb".freeze, "spec/support/confirm_helpers.rb".freeze, "spec/support/email.rb".freeze, "spec/support/features".freeze, "spec/support/features/fill_addresses_fields.rb".freeze, "spec/support/preferences.rb".freeze, "spec/support/spree.rb".freeze]
  s.homepage = "https://github.com/solidusio/solidus_auth_devise".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.post_install_message = "NOTE: Rails 6 has removed secret_token in favor of secret_key_base, which was deprecated in\n Rails 5.2. solidus_auth_devise will keep using secret_token, when present, as the pepper. If\n secret_token is undefined or not available, secret_key_base will be used instead.".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.4.0".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Provides authentication and authorization services for use with Solidus by using Devise and CanCan.".freeze
  s.test_files = ["spec/factories".freeze, "spec/factories/confirmed_user.rb".freeze, "spec/features".freeze, "spec/features/sign_up_spec.rb".freeze, "spec/features/sign_in_spec.rb".freeze, "spec/features/admin_permissions_spec.rb".freeze, "spec/features/checkout_spec.rb".freeze, "spec/features/change_email_spec.rb".freeze, "spec/features/confirmation_spec.rb".freeze, "spec/features/sign_out_spec.rb".freeze, "spec/features/order_spec.rb".freeze, "spec/features/admin".freeze, "spec/features/admin/sign_in_spec.rb".freeze, "spec/features/admin/products_spec.rb".freeze, "spec/features/admin/sign_out_spec.rb".freeze, "spec/features/admin/password_reset_spec.rb".freeze, "spec/features/account_spec.rb".freeze, "spec/features/password_reset_spec.rb".freeze, "spec/mailers".freeze, "spec/mailers/user_mailer_spec.rb".freeze, "spec/support".freeze, "spec/support/confirm_helpers.rb".freeze, "spec/support/email.rb".freeze, "spec/support/features".freeze, "spec/support/features/fill_addresses_fields.rb".freeze, "spec/support/authentication_helpers.rb".freeze, "spec/support/ability.rb".freeze, "spec/support/preferences.rb".freeze, "spec/support/spree.rb".freeze, "spec/models".freeze, "spec/models/user_spec.rb".freeze, "spec/models/order_spec.rb".freeze, "spec/spec_helper.rb".freeze, "spec/controllers".freeze, "spec/controllers/spree".freeze, "spec/controllers/spree/user_sessions_controller_spec.rb".freeze, "spec/controllers/spree/base_controller_spec.rb".freeze, "spec/controllers/spree/checkout_controller_spec.rb".freeze, "spec/controllers/spree/products_controller_spec.rb".freeze, "spec/controllers/spree/users_controller_spec.rb".freeze, "spec/controllers/spree/user_passwords_controller_spec.rb".freeze, "spec/controllers/spree/user_registrations_controller_spec.rb".freeze, "spec/controllers/spree/admin".freeze, "spec/controllers/spree/admin/base_controller_spec.rb".freeze, "spec/controllers/spree/admin/user_passwords_controller_spec.rb".freeze]

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<deface>.freeze, ["~> 1.0"])
      s.add_runtime_dependency(%q<devise>.freeze, ["~> 4.1"])
      s.add_runtime_dependency(%q<devise-encryptable>.freeze, ["= 0.2.0"])
      s.add_runtime_dependency(%q<paranoia>.freeze, ["~> 2.4"])
      s.add_runtime_dependency(%q<solidus_core>.freeze, [">= 2.6", "< 4"])
      s.add_runtime_dependency(%q<solidus_support>.freeze, ["~> 0.5"])
      s.add_development_dependency(%q<solidus_backend>.freeze, [">= 2.6", "< 4"])
      s.add_development_dependency(%q<solidus_dev_support>.freeze, [">= 0.3.0"])
      s.add_development_dependency(%q<solidus_frontend>.freeze, [">= 2.6", "< 4"])
    else
      s.add_dependency(%q<deface>.freeze, ["~> 1.0"])
      s.add_dependency(%q<devise>.freeze, ["~> 4.1"])
      s.add_dependency(%q<devise-encryptable>.freeze, ["= 0.2.0"])
      s.add_dependency(%q<paranoia>.freeze, ["~> 2.4"])
      s.add_dependency(%q<solidus_core>.freeze, [">= 2.6", "< 4"])
      s.add_dependency(%q<solidus_support>.freeze, ["~> 0.5"])
      s.add_dependency(%q<solidus_backend>.freeze, [">= 2.6", "< 4"])
      s.add_dependency(%q<solidus_dev_support>.freeze, [">= 0.3.0"])
      s.add_dependency(%q<solidus_frontend>.freeze, [">= 2.6", "< 4"])
    end
  else
    s.add_dependency(%q<deface>.freeze, ["~> 1.0"])
    s.add_dependency(%q<devise>.freeze, ["~> 4.1"])
    s.add_dependency(%q<devise-encryptable>.freeze, ["= 0.2.0"])
    s.add_dependency(%q<paranoia>.freeze, ["~> 2.4"])
    s.add_dependency(%q<solidus_core>.freeze, [">= 2.6", "< 4"])
    s.add_dependency(%q<solidus_support>.freeze, ["~> 0.5"])
    s.add_dependency(%q<solidus_backend>.freeze, [">= 2.6", "< 4"])
    s.add_dependency(%q<solidus_dev_support>.freeze, [">= 0.3.0"])
    s.add_dependency(%q<solidus_frontend>.freeze, [">= 2.6", "< 4"])
  end
end
