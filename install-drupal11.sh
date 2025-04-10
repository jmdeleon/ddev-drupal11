#!/bin/bash
mkdir drupal && cd drupal
ddev config --project-type=drupal11 --docroot=web
ddev start
ddev composer create drupal/recommended-project:^11
ddev composer require drush/drush
ddev drush site:install --account-name=admin --account-pass=admin -y
ddev launch $(ddev drush uli)