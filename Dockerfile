FROM ulm0/gitlab:13.0.6

COPY wrapper /assets/wrapper
RUN chmod +x /assets/wrapper
CMD ["/assets/wrapper"]
