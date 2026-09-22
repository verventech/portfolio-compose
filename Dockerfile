FROM php:8.2-apache

# Install PostgreSQL C-library dependency and PHP extensions, then clean up cache
RUN apt-get update && apt-get install -y \
    libpq-dev \
    && docker-php-ext-install pgsql pdo_pgsql \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Document container port
EXPOSE 80

# Environment defaults (Can be overridden by docker-compose or .env)
ENV PGHOST=portfolio-db \
    PGDATABASE=portfolio_db \
    PGUSER=musharaf \
    PGPASSWORD=musharaf_secure_pass_123 \
    PGPORT=5432

# Copy all application source code into Apache document root
COPY ./src /var/www/html

# Set proper ownership and permissions for Apache web server
RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html