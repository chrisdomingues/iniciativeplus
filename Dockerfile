# Etapa 2: Imagem final com NGINX
FROM nginx:stable-alpine

COPY ./public /usr/share/nginx/html

# Remove config default
RUN rm /etc/nginx/conf.d/default.conf

# Copia config customizado do NGINX
COPY nginx.conf /etc/nginx/conf.d

CMD ["nginx", "-g", "daemon off;"]
