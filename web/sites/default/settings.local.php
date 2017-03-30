<?php
$settings['trusted_host_patterns'] = [];

// Database configuration.
$databases['default']['default'] = array(
  'driver' => 'mysql',
  'host' => 'mariadb',
  'username' => 'mysql',
  'password' => 'mysql',
  'database' => 'data',
  'prefix' => '',
);
$config['search_api.server.solr']['backend_config']['connector_config']['host'] = 'solr';
$config['search_api.server.solr']['backend_config']['connector_config']['port'] = '8080';

$settings['hash_salt'] = hash('sha256', serialize($databases));

// Database configuration.
if (empty($_SERVER['APP_DOCKER'])) {

  $port_cmd = "docker inspect --format='{{(index (index .NetworkSettings.Ports \"3306/tcp\") 0).HostPort}}' commerce2_mariadb_1";
  $port = trim(shell_exec($port_cmd));

  // Default config within Docker container.
  $databases['default']['default'] = array(
    'driver' => 'mysql',
    'host' => '127.0.0.1',
    'port' => $port,
    'username' => 'mysql',
    'password' => 'mysql',
    'database' => 'data',
    'prefix' => '',
  );

  // @todo add solr support
  // $port_cmd = "docker inspect --format='{{(index (index .NetworkSettings.Ports \"8080/tcp\") 0).HostPort}}' forkdin_solr_1";
  // $port = trim(shell_exec($port_cmd));
  // $config['search_api.server.solr']['backend_config']['connector_config']['host'] = 'localhost';
  // $config['search_api.server.solr']['backend_config']['connector_config']['port'] = $port;
}

$settings['update_free_access'] = TRUE;
