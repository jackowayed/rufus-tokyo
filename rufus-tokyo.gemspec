
Gem::Specification.new do |s|

  s.name = 'rufus-tokyo'
  s.version = '0.1.13.2'
  s.authors = [ 'John Mettraux', ]
  s.email = 'jmettraux@gmail.com'
  s.homepage = 'http://rufus.rubyforge.org/'
  s.platform = Gem::Platform::RUBY
  s.summary = 'ruby-ffi based lib to access Tokyo Cabinet and Tyrant'

  s.require_path = 'lib'
  s.test_file = 'spec/spec.rb'
  s.has_rdoc = true
  s.extra_rdoc_files = %w{ README.txt CHANGELOG.txt CREDITS.txt }
  s.rubyforge_project = 'rufus'

  %w{ ffi }.each do |d|
    s.requirements << d
    s.add_dependency(d)
  end

  s.files = ["lib/rufus-edo.rb", "lib/rufus/edo.rb", "lib/rufus/edo/tabcore.rb", "lib/rufus/edo/ntyrant/abstract.rb", "lib/rufus/edo/ntyrant/table.rb", "lib/rufus/edo/ntyrant.rb", "lib/rufus/edo/error.rb", "lib/rufus/edo/cabcore.rb", "lib/rufus/edo/cabinet/abstract.rb", "lib/rufus/edo/cabinet/table.rb", "lib/rufus/tokyo.rb", "lib/rufus/tokyo/config.rb", "lib/rufus/tokyo/hmethods.rb", "lib/rufus/tokyo/tyrant.rb", "lib/rufus/tokyo/dystopia/lib.rb", "lib/rufus/tokyo/dystopia/core.rb", "lib/rufus/tokyo/dystopia/words.rb", "lib/rufus/tokyo/transactions.rb", "lib/rufus/tokyo/tyrant/lib.rb", "lib/rufus/tokyo/tyrant/abstract.rb", "lib/rufus/tokyo/tyrant/table.rb", "lib/rufus/tokyo/query.rb", "lib/rufus/tokyo/dystopia.rb", "lib/rufus/tokyo/ttcommons.rb", "lib/rufus/tokyo/cabinet/lib.rb", "lib/rufus/tokyo/cabinet/util.rb", "lib/rufus/tokyo/cabinet/abstract.rb", "lib/rufus/tokyo/cabinet/table.rb", "lib/rufus-tokyo.rb", "CREDITS.txt", "LICENSE.txt", "CHANGELOG.txt", "README.txt", "TODO.txt"]
  # generated fromDir['lib/**/*.rb'] + Dir['*.txt'] - [ 'lib/tokyotyrant.rb' ]. needs redoing for every new file, but hopefully will make github build the gem right now.
end

