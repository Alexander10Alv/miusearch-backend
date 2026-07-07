FROM searxng/searxng:latest

# Copiamos nuestra configuración personalizada (con JSON activado)
COPY settings.yml /etc/searxng/settings.yml

# Render asigna el puerto dinámicamente via $PORT, pero SearXNG
# por defecto escucha en 8080. Render detecta el puerto expuesto.
EXPOSE 8080

ENV SEARXNG_BASE_URL="https://TU-APP.onrender.com/"
