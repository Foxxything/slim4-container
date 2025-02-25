<?php

use Project\Name\Core\RecaptchaValidator;
use Psr\Container\ContainerInterface;
use Slim\App;
use Slim\Factory\AppFactory;
use Slim\Views\PhpRenderer;

return [
  'settings' => function () {
    return require __DIR__ . '/settings.php';
  },

  App::class => function (ContainerInterface $container) {
    AppFactory::setContainer($container);

    return AppFactory::create();
  },

  PhpRenderer::class => function (ContainerInterface $container) {
    return new PhpRenderer(dirname(__DIR__) . '/templates');
  },
];