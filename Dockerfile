FROM nginx:1
RUN apt update && apt install -y git
RUN rm -rf /usr/share/nginx/html
WORKDIR /usr/share/ngix/html
RUN git clone https://github.com/LorenaPiramide/CI-CDSecurizadoECSActividad.git .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]