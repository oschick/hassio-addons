ARG BUILD_FROM
FROM $BUILD_FROM

RUN apk add --no-cache git 

RUN git clone https://github.com/oschick/eastron-sdm-to-mqtt.git /app

WORKDIR /app

RUN apk add --no-cache python3 py3-pip

RUN pip3 install -r requirements.txt


# Build arguments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="${BUILD_NAME}" \
    io.hass.description="${BUILD_DESCRIPTION}" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="oschick" \
    org.opencontainers.image.title="${BUILD_NAME}" \
    org.opencontainers.image.description="${BUILD_DESCRIPTION}" \
    org.opencontainers.image.authors="oschick" \
    org.opencontainers.image.source="https://github.com/${BUILD_REPOSITORY}" \
    org.opencontainers.image.documentation="https://github.com/${BUILD_REPOSITORY}/blob/main/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}


# ENV PATH="/venv/bin:$PATH"

COPY data/run.sh /

RUN chmod a+x /run.sh

CMD ["/run.sh"]

# RUN addgroup --gid 1337 app && adduser --uid 1337 --gid 1337 --disabled-password --gecos "App User" app

# COPY ./src/ /app

# COPY ./requirements.txt /app

# RUN pip install -r /app/requirements.txt

# RUN chown app:app /app

# USER 1337:1337

# WORKDIR /app

# CMD ["python", "agent.py"]

# End of Dockerfile