FROM stellar/stellar-rpc:latest

WORKDIR /app

COPY . .

EXPOSE 8000

CMD ["--config-path", "/opt/stellar/stellar-rpc-config.toml"]