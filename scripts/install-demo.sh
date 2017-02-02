#!/usr/bin/env bash
composer config repositories.commerce_demo vcs https://github.com/mglaman/commerce_demo
composer require drupal/commerce_demo *@dev
./bin/drush --root=$(pwd)/web en -y commerce_demo -y
./bin/drush --root=$(pwd)/web cr
./bin/drush --root=$(pwd)/web cc drush
./bin/drush --root=$(pwd)/web mi commerce_demo_product_attribute_color
./bin/drush --root=$(pwd)/web mi commerce_demo_product_attribute_size
./bin/drush --root=$(pwd)/web mi commerce_demo_product_variation_import_tshirt
./bin/drush --root=$(pwd)/web mi commerce_demo_product_import_tshirt
