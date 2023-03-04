FROM alpine:latest

# apkのupdate
RUN apk update
# vimの追加
RUN apk add vim
# bashの追加
RUN apk add bash
# python3の追加
RUN apk add python3