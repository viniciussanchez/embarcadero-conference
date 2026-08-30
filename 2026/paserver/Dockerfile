# Docwiki
# https://docwiki.embarcadero.com/RADStudio/en/Installing_the_Platform_Assistant_on_Linux
# https://docwiki.embarcadero.com/RADStudio/Florence/en/Linux_Application_Development

FROM ubuntu:22.04
RUN apt update -y && apt upgrade -y && apt dist-upgrade -y
RUN apt install -y joe wget p7zip-full curl openssh-server build-essential zlib1g-dev libcurl4-gnutls-dev libncurses5 libtinfo5    
COPY ./LinuxPAServer37.0.tar.gz ./
RUN tar -xvf ./LinuxPAServer37.0.tar.gz
EXPOSE 64211
ENTRYPOINT ["./PAServer-37.0/paserver", "-password="]

# Build:
#   docker build -t viniciussanchez/paserver .
# Run:
#   docker run -p 64211:64211 -it viniciussanchez/paserver