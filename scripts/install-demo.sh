#!/usr/bin/env bash
composer config repositories.commerce_demo vcs https://github.com/mglaman/commerce_demo
composer require drupal/commerce_demo *@dev
./bin/drush --root=$(pwd)/web en -y commerce_demo -y
./bin/drush --root=$(pwd)/web cr
./bin/drush --root=$(pwd)/web cc drush
./bin/drush --root=$(pwd)/web mi --all
