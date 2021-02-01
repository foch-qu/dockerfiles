FROM openjdk:8u212-jdk

WORKDIR /home/jenkins/

RUN echo "export ANDROID_NDK=/home/jenkins/android-ndk-r10e" >> ~/.bashrc && \
    echo "export PATH=$ADNROID_NDK" >> ~/.bashrc && \
    echo "export ANDROID_SDK=/home/jenkins/android-sdk-linux" >> ~/.bashrc && \
    echo "export PATH=$PATH:$ANDROID_SDK/platforms:$ANDROID_SDK/tools" >> ~/.bashrc && \
    echo "export GRADLE_HOME=/home/jenkins/gradle-2.6" >> ~/.bashrc && \
    echo "export PATH=$PATH:$GRADLE_HOME/bin" >> ~/.bashrc
RUN /bin/bash -c "source ~/.bashrc"
RUN echo "192.168.0.204 svn-server" >> /etc/hosts
RUN env
RUN sed -i 's#http://archive.ubuntu.com/#http://mirrors.tuna.tsinghua.edu.cn/#' /etc/apt/sources.list;
RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y software-properties-common devscripts equivs dpkg-dev && \
    apt-get install -y subversion && \
	apt clean