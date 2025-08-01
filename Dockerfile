FROM stellar/stellar-rpc:23.0.0-rc2-127

WORKDIR /app

COPY . .

COPY ./config/stellar-rpc-config.toml /opt/stellar/stellar-rpc-config.toml
COPY ./config/stellar-captive-core-pubnet.cfg /opt/stellar/stellar-captive-core-pubnet.cfg

RUN mkdir -p /opt/stellar/data/db

EXPOSE 8000

CMD ["--config-path", "/opt/stellar/stellar-rpc-config.toml"]