# Stimulus Reflex install
after_bundle do
run 'bundle add stimulus_reflex'
run 'bundle exec rails stimulus_reflex:install'

# tailwindcss
run 'yarn add tailwindcss postcss autoprefixer'
run 'mkdir app/javascript/stylesheets'
run 'curl -L https://raw.githubusercontent.com/directions-needed/rails-templates/main/files/postcss.config.js > app/javascript/stylesheets/application.scss'
run 'npx tailwindcss init app/javascript/stylesheets/tailwind.config.js'
run 'curl -L https://raw.githubusercontent.com/directions-needed/rails-templates/main/files/postcss.config.js > postcss.config.js'

# View Component (reflex)
run 'gem install view_component_reflex'
end