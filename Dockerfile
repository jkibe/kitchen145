FROM nginx:stable-alpine

COPY nginx/blog.conf /etc/nginx/conf.d/
COPY ./_site /static

EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]
