FROM alpine:latest                               #pulling the alpine image from registory
RUN apk add --no-cache python3 py3-pip           #upgrading & installing pyhon 
COPY . .                                         #copy all files to current folder
RUN pip3 install -r requir.txt                   #installing flask & jinjo template
EXPOSE 5000                                      #mapping the port to port
ENTRYPOINT ["python3"]                           #cmd will overwrite the entry point & will execute when container start
CMD ["a.py"]

