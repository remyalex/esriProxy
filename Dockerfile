FROM microsoft/aspnet
COPY ./ /inetpub/wwwroot

$ docker build -t aspnetapp . $ docker run -d -p 8080:80 --name myapp aspnetapp
