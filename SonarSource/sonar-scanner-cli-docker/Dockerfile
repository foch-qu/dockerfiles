FROM ubuntu:18.04
USER root

# Install Dependency Package
RUN apt-get update -qqy && \
    apt install -y openjdk-8-jdk  vim bash wget unzip make file gcc g++ build-essential libcunit1 libcunit1-dev gcovr && \
    apt-get clean

# JAVA PATH 
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV PATH $PATH:$JAVA_HOME/bin

# Install sonar-scanner
RUN wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.5.0.2216-linux.zip && \
    unzip sonar-scanner-cli-4.5.0.2216-linux.zip && \
    rm -rf sonar-scanner-cli-4.5.0.2216-linux.zip

# ADD sonar-scanner To PATH
ENV PATH $PATH:/sonar-scanner-4.5.0.2216-linux/bin