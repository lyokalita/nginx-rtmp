# nginx-rtmp
nginx server with rtmp module compiled on centos7

## build
https://www.nginx.com/blog/video-streaming-for-remote-learning-with-nginx/

## docker
### build
`docker build . -t nginx-rtmp`
### run
`docker run -d -p 1935:1935 --name nginx-rtmp --restart=always -v /etc/nginx/conf:/usr/local/nginx/conf -v /etc/nginx/logs:/usr/local/nginx/logs nginx-rtmp`
