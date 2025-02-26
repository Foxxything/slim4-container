# Project Definitions  

- **[Container](./www/config/container.php)**  
  Defines and registers services for Dependency Injection (DI), including the Slim app instance and the template renderer.  

- **[Routes](./www/config/routes.php)**  
  Configures the application's routes and defines how requests are processed.  

- **[Index](./www/public/index.php)**  
  The main entry point of the application, responsible for bootstrapping and running the project.  

- **[Actions](./www/src/Action/)**  
  Handles request processing and determines what content to render for each route.  

- **[Classes](./www/src/Core/)**  
  Contains backend logic and utility classes for data processing.  

- **[Templates](./www/templates/)**  
  Provides HTML templates with support for dynamic content rendering via variables.  
