2.2.0 :030 > Gem::Commands::UnpackCommand.new.get_path(n)                                             
NoMethodError: undefined method `matching_specs' for #<struct Name name="rake">
        from /home/patrick/.rvm/rubies/ruby-2.2.0/lib/ruby/site_ruby/2.2.0/rubygems/commands/unpack_command.rb:135:in `get_path'
        from (irb):30
        from /home/patrick/.rvm/rubies/ruby-2.2.0/bin/irb:11:in `<main>'
2.2.0 :031 > gem_name, *gem_ver_reqs = 'json', '~> 1.8.0'                                             
 => ["json", "~> 1.8.0"] 
2.2.0 :032 > gdep = Gem::Dependency.new(gem_name, *gem_ver_reqs)                                      
 => <Gem::Dependency type=:runtime name="json" requirements="~> 1.8.0"> 
2.2.0 :033 > Gem::Commands::UnpackCommand.new.get_path(dgep)                                          
NameError: undefined local variable or method `dgep' for main:Object
        from (irb):33
        from /home/patrick/.rvm/rubies/ruby-2.2.0/bin/irb:11:in `<main>'
2.2.0 :034 > Gem::Commands::UnpackCommand.new.get_path(gdep)                                          
 => "/home/patrick/.rvm/gems/ruby-2.2.0/cache/json-1.8.2.gem" 
2.2.0 :035 > gdep = Gem::Dependency.new(gem_name, *gem_ver_reqs)

