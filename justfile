# blog_code_examples — task runner (just)

# List available recipes
default:
    @just --list

# Run the test suite (RSpec)
test *args:
    bundle exec rspec {{args}}
