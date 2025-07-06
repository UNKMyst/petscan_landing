FROM php:8.1-apache

# Enable Apache modules
RUN a2enmod rewrite

# Copy files to web directory
COPY . /var/www/html/

# Expose port 80
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]
