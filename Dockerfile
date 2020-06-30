FROM ulm0/gitlab:13.0.6

COPY wrapper /assets/wrapper
RUN chmod +x /assets/wrapper

COPY wait_for_postgres_startup.sh /assets/wait_for_postgres_startup.sh
RUN chmod +x /assets/wait_for_postgres_startup.sh

CMD ["/assets/wrapper"]
