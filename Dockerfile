FROM ulm0/gitlab:12.9.2

COPY wrapper /assets/wrapper
RUN chmod +x /assets/wrapper
CMD ["/assets/wrapper"]