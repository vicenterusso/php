FROM vicenterusso/php:base

# Add locale pt_BR
RUN sed -i '/^#.* pt_BR /s/^#//' /etc/locale.gen

RUN locale-gen

# Add user for application
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# Change current user to www
USER www

