FROM r-base:4.0.3

RUN apt-get update && apt-get install -y --no-install-recommends\
    libcurl4-openssl-dev \
    libssl-dev

RUN R -e 'install.packages(c("shiny", "rsconnect"))'

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
