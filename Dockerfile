FROM alpine:3.21
ENV HOME=/tmp
RUN apk --no-cache -U upgrade \
    && apk --no-cache add python3 py3-pip ffmpeg \
    && pip3 install --no-cache-dir --break-system-packages yt-dlp
WORKDIR /app
COPY ./dl.sh .
RUN chmod +x ./dl.sh
USER guest
ENTRYPOINT ["./dl.sh"]
CMD ["https://www.youtube.com/playlist?list=PLcBvX39C5rUEum5mHo9gbEj0fEGuUvdI4"]
