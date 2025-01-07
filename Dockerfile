FROM nginx:alpine
RUN echo "<html><body><h1>EBS CSI Driver Demo</h1><p>This content is stored on an EBS volume</p></body></html>" > /usr/share/nginx/html/index.html
EXPOSE 80
