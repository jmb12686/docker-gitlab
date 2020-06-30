FROM ulm0/gitlab:13.0.6

# Overwrite chef cookbook to permit extra time for postgres to startup
COPY cookbooks/postgresql/resources/user.rb /opt/gitlab/embedded/cookbooks/postgresql/resources/user.rb

COPY wrapper /assets/wrapper
RUN chmod +x /assets/wrapper

COPY wait_for_postgres_startup.sh /assets/wait_for_postgres_startup.sh
RUN chmod +x /assets/wait_for_postgres_startup.sh

CMD ["/assets/wrapper"]
