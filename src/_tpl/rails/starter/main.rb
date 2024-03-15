source_paths.unshift(File.dirname(__FILE__))

def run_main
  create_first_commit
  apply "home.rb"
end

def create_first_commit
  git add: "."
  git commit: %Q{ -m "first commit" }
end

run_main
