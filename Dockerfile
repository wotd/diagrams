FROM alpine

RUN mkdir /src
WORKDIR /src
# Install dependencies
RUN apk add py3-pip gcc python3-dev musl-dev graphviz fontconfig \
    # Install fonts
    && apk add font-inconsolata font-dejavu font-noto font-noto-cjk font-awesome font-noto-extra \
    && pip install diagrams 

CMD [ "diagram.py" ]
ENTRYPOINT [ "python" ]