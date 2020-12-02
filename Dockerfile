FROM tons/youtube-dl:latest
WORKDIR /app
ADD ./dl.sh .
USER guest
ENTRYPOINT ["./dl.sh"]
CMD ["https://www.youtube.com/playlist?list=PLcBvX39C5rUEum5mHo9gbEj0fEGuUvdI4"]
