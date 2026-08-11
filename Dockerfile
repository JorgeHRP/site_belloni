# Usa imagem leve do Nginx
FROM nginx:alpine

# Copia os arquivos do repositório (já disponíveis no contexto do build)
# para a pasta padrão do Nginx
COPY . /usr/share/nginx/html/

# Expõe a porta 80
EXPOSE 80

# Inicia o Nginx
CMD ["nginx", "-g", "daemon off;"]
