FROM kong/kong-gateway:3.8.0.0

ENV KONG_DATABASE=postgres
ENV KONG_PG_HOST=junction.proxy.rlwy.net
ENV KONG_PG_USER=postgres
ENV KONG_PG_PASSWORD=KJHSBdcJlvaFMOCiTXfvDGcqjpyUwPMX
ENV KONG_PROXY_ACCESS_LOG=/dev/stdout
ENV KONG_ADMIN_ACCESS_LOG=/dev/stdout
ENV KONG_PROXY_ERROR_LOG=/dev/stderr
ENV KONG_ADMIN_ERROR_LOG=/dev/stderr
ENV KONG_ADMIN_LISTEN=0.0.0.0:8001
ENV KONG_ADMIN_GUI_URL=http://localhost:8002

EXPOSE 8000 8443 8001 8444 8002 8445 8003 8004

CMD ["kong", "migrations", "bootstrap", "--vv", "&&", "kong", "start", "--vv"]
