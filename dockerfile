FROM alpine:latest

# apkのupdate
RUN apk update
# vimの追加
RUN apk add vim
# curlの追加
RUN apk add curl
# python3の追加
RUN apk add python3
# pipの追加
RUN curl -kL https://bootstrap.pypa.io/get-pip.py | python
# treeの追加
RUN apk add tree
# Djangoの仮想環境の作成。
RUN python3 -m venv DjangoSAMPLE
RUN echo "Django==3.0.5" >> DjangoSAMPLE/requirements.txt
RUN pip3 install -r DjangoSAMPLE/requirements.txt
RUN pip3 freeze