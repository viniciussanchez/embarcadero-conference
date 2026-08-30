FROM ubuntu:22.04

WORKDIR /app
COPY ./Linux64/Release/Samples ./Samples
RUN chmod +x ./Samples

EXPOSE 9000
ENTRYPOINT ["./Samples"]