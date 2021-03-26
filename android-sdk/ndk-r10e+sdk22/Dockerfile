# android build environment

FROM jwduck/android-ndk:r10e
USER root

# Never ask for confirmations
ENV DEBIAN_FRONTEND noninteractive
ENV ANDROID_SDK_VERSION 22
ENV ANDROID_SDK_TOOLS 22.0.1
# Update apt-get & Install packages
RUN apt update && \
    apt install -y openjdk-8-jdk  bash wget unzip make file && \
	apt clean

# Export JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
ENV PATH $PATH:$JAVA_HOME/bin

# Install Android SDK
RUN wget -q --no-check-certificate https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip && \
    unzip -q sdk-tools-linux-3859397.zip -d /usr/local/android-sdk && \
    rm sdk-tools-linux-3859397.zip && \ 
    mkdir /root/.android && touch /root/.android/repositories.cfg

# Export ANDROID_HOME variable
ENV ANDROID_HOME /usr/local/android-sdk
ENV PATH $PATH:$ANDROID_HOME/tools
ENV PATH $PATH:$ANDROID_HOME/tools/bin
ENV PATH $PATH:$ANDROID_HOME/platform-tools
ENV PATH $PATH:$ANDROID_HOME/build-tools/${ANDROID_SDK_TOOLS}

RUN echo yes | sdkmanager  \
    "platforms;android-${ANDROID_SDK_VERSION}"  \
    "build-tools;${ANDROID_SDK_TOOLS}"  \
    "extras;android;m2repository" \
    "extras;google;m2repository" \
    "platform-tools" \
    "extras;google;google_play_services"

RUN echo "sdk.dir=$ANDROID_HOME" > local.properties
