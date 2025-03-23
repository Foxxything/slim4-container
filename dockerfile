FROM php:8.3-apache

# Install Git and PDO extensions (for MySQL or PostgreSQL)
RUN apt-get update && \
    apt-get install -y \
    git \
    libpq-dev \
    && docker-php-ext-install pdo pdo_mysql pdo_pgsql \
    && rm -rf /var/lib/apt/lists/*

# Enable Apache Rewrite Module (required for Slim)
RUN a2enmod rewrite

# Set permissions
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 for the web server
EXPOSE 80

CMD ["apache2-foreground"]
