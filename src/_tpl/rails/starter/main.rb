source_paths.unshift(File.dirname(__FILE__))

def run_main
  apply "home.rb"
  one
  two
end

def one
  say "One"
end

def two
  say "Two"
end

run_main
