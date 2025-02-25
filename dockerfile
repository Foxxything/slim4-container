FROM php:8.3-apache

# Install Git
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Enable Apache Rewrite Module (required for Slim)
RUN a2enmod rewrite

# Set permissions
RUN chown -R www-data:www-data /var/www/html

CMD ["apache2-foreground"]
