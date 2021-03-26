FROM openjdk:8u212-jdk

WORKDIR /home/jenkins/

RUN echo "export ANDROID_NDK=/home/jenkins/android-ndk-r10e" >> ~/.bashrc && \
   echo "export PATH=$ADNROID_NDK" >> ~/.bashrc && \
   echo "export ANDROID_HOME=/home/jenkins/android-sdk-linux" >> ~/.bashrc && \
   echo "export PATH=$PATH:$ANDROID_SDK/platforms:$ANDROID_SDK/tools" >> ~/.bashrc && \
   echo "export GRADLE_HOME=/home/jenkins/gradle-2.6" >> ~/.bashrc && \
   echo "export PATH=$PATH:$GRADLE_HOME/bin" >> ~/.bashrc
RUN /bin/bash -c "source ~/.bashrc"
RUN env
RUN sed -i 's#http://archive.ubuntu.com/#http://mirrors.tuna.tsinghua.edu.cn/#' /etc/apt/sources.list;
RUN apt-get update

RUN apt-get -y install g++ && \
    apt-get -y install build-essential && \
    wget http://ftp.gnu.org/gnu/gcc/gcc-5.4.0/gcc-5.4.0.tar.gz && \
    tar zxvf gcc-5.4.0.tar.gz && \
    cd /home/jenkins/gcc-5.4.0 && \
    pwd && \
    ./contrib/download_prerequisites && \
    ./configure --enable-checking=release --enable-languages=c,c++ --disable-multilib && \
    make && \
    make install && \
    gcc --version && \
    apt-get -y install build-essential && \
    apt-get -y install wget && \
    cd /home/jenkins && \
    wget http://www.cmake.org/files/v3.12/cmake-3.12.4.tar.gz && \
    tar -xvzf cmake-3.12.4.tar.gz && \
    cd /home/jenkins/cmake-3.12.4/ && \
    ./configure && \
    make && \
    make install && \
    cmake --version && \
    cd /home/jenkins && \
    wget http://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz && \
    tar zxvf yasm-1.3.0.tar.gz && \
    cd /home/jenkins/yasm-1.3.0 && \
    ./configure && \
    make && \
    make install && \
	apt clean