# Project Definitions
- [Container](./www/config/container.php) 
This file configures Dependency Injection (DI) by defining and registering services, such as the Slim app instance and template renderer, using a container.

- [Routes](./www/config/routes.php)
This file configures what routes to expose and how to processing them.

- [Index](./www/public/index.php)
This is the entry-point to the site, all it does is run the project's bootstrap

- [Actions](./www/src/Action/)
Actions define how and what to render to the link being requested

- [Classes](./www/src/Core/)
Classes for processing backend information

- [Templates](./www/templates/)
Templates are a mostly finished site but allowing you to pass variables to the static files to create dynamic routes.