FROM scratch

# Metadata params
ARG BUILD_DATE
ARG VERSION
ARG PROJECT_URL
ARG VCS_REF
ARG TARBALL
ARG RELEASE_DESCRIPTION

# https://github.com/opencontainers/image-spec/blob/master/annotations.md
LABEL org.opencontainers.image.created="$BUILD_DATE" \
      org.opencontainers.image.source="$PROJECT_URL" \
      org.opencontainers.image.revision="$VCS_REF" \
      org.opencontainers.image.vendor="OffSec" \
      org.opencontainers.image.version="$VERSION" \
      org.opencontainers.image.title="Threatcode Linux ($RELEASE_DESCRIPTION branch)" \
      org.opencontainers.image.description="Official Threatcode Linux container image for $RELEASE_DESCRIPTION" \
      org.opencontainers.image.url="https://www.threatcode.org/" \
      org.opencontainers.image.authors="Threatcode Developers <devel@threatcode.org>"

ADD $TARBALL /

ENV LANG=C.UTF-8

CMD ["bash"]
