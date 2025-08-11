FROM public.ecr.aws/nginx/nginx:alpine

#Remove the default nginx page
RUN rm -rf /usr/share/nginx/html/*

#Copy our html & css file to nginx
COPY code/* /usr/share/nginx/html/

#Port expose
Expose 80

#Start nginx
CMD ["nginx", "-g", "daemon off;"]
