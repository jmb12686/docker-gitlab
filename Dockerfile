FROM ulm0/gitlab:12.10.0

COPY wrapper /assets/wrapper
RUN chmod +x /assets/wrapper
CMD ["/assets/wrapper"]
