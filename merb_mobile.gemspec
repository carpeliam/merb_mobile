# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{merb_mobile}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Liam Morley"]
  s.date = %q{2008-12-14}
  s.description = %q{Merb plugin that sets content_type to :mobile if user agent is a mobile phone.}
  s.email = %q{liam@carpeliam.com}
  s.extra_rdoc_files = ["README.markdown", "LICENSE", "TODO"]
  s.files = ["LICENSE", "README.markdown", "Rakefile", "TODO", "lib/merb_mobile", "lib/merb_mobile/mobile.rb", "lib/merb_mobile/merbtasks.rb", "lib/merb_mobile.rb", "spec/spec_helper.rb", "spec/merb_mobile_spec.rb", "spec/fixtures", "spec/fixtures/controllers", "spec/fixtures/controllers/mobile.rb", "spec/fixtures/controllers/main.rb", "spec/fixtures/views", "spec/fixtures/views/main", "spec/fixtures/views/main/action.mobile.erb", "spec/fixtures/views/main/action.html.erb", "spec/fixtures/views/mobile", "spec/fixtures/views/mobile/action.mobile.erb", "spec/fixtures/views/mobile/action.html.erb"]
  s.has_rdoc = true
  s.homepage = %q{http://www.carpeliam.com/}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{merb}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Merb plugin that sets content_type to :mobile if user agent is a mobile phone.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<merb>, [">= 1.0.4"])
    else
      s.add_dependency(%q<merb>, [">= 1.0.4"])
    end
  else
    s.add_dependency(%q<merb>, [">= 1.0.4"])
  end
end
