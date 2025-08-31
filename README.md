# Template Redmine Plugin

This repository provides a template for Redmine plugin.

## Prepare

1. Replace value in *init.rb*.
   * `name`
   * `description`
   * `url`
2. Replace name in *package.json*.

## Development

Redmine source code is in */usr/src/redmine* on devcontainer.

Use `bundler` for executing ruby code in redmine source code.

### Formatting

Format source code.

```sh
# javascript
npm run format
```

### Linting

Lint source code.

```sh
# ruby
mapfile -t FILES < <(find -L "plugins/${PLUGIN_NAME}" -name '*.rb')
bundle exec rubocop "${FILES[@]}"

# javascript
npm run lint
```

### Testing

Execute test code.

```sh
# Once
RAILS_ENV=test bundle exec rake db:drop
RAILS_ENV=test exec rake db:create db:migrate redmine:plugins:migrate
echo ja | RAILS_ENV=test bundle exec rake redmine:load_default_data

# Run Test
RAILS_ENV=test bundle exec rake test TEST="plugins/${PLUGIN_NAME}/test/**/*_test.rb"
```

Execute E2E test code.

Execute after starting up Redmine debug server.

```sh
# Once
npx playwright test --reporter list --workers 1 --project "initialize"

# Run Test
npx playwright test --reporter list --workers 1 --project "chromium test"
npx playwright test --reporter list --workers 1 --project "firefox test"
npx playwright test --reporter list --workers 1 --project "webkit test"
```

## Tested Environment

* Redmine (Docker Image)
  * 4.0
  * 4.1
  * 4.2
  * 5.0
  * 5.1
  * 6.0
* Database
  * SQLite
  * MySQL 5.7 or 8.0
  * PostgreSQL 14
