FROM ubuntu

# Setup installation
ADD bitrock-installer/installbuilder-qt-professional-19.4.0-linux-x64-installer.run /bitrock/bitrock.run
WORKDIR /bitrock
RUN chmod +x ./bitrock.run

# Run installation
RUN ./bitrock.run --mode unattended --prefix /opt/bitrock

# Add bitrock to path
ENV PATH="/opt/bitrock/bin:${PATH}"
