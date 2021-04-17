FROM vicenterusso/php:base

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y locales

# Add locale pt_BR
RUN sed -i 's/# pt_BR*/pt_BR/' /etc/locale.gen

RUN locale-gen

# Add user for application
RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

# Change current user to www
USER www

