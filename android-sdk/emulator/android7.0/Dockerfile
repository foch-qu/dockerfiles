FROM cidana/androidsdk:24
RUN apt -qqy update && apt -qqy install tzdata \
    net-tools \
    nodejs \
    npm \ 
    python3 \
    python3-pip \
    cmake \
    build-essential \
    libopencv-dev \
    python3-opencv \
    qemu-kvm \
    ubuntu-vm-builder \
    supervisor \
    bridge-utils \
    libvirt-bin \
    socat
RUN pip3 install Appium-Python-Client && \
    pip3 install pillow && \
    pip3 install numpy && \ 
    pip3 install scikit-build && \
    npm cache clean -f && \
    npm install -g n && \
    n stable
ENV PATH $PATH
RUN npm -v && \
    npm install -g cnpm -registry=http://registry.npm.taobao.org && \
    cnpm install -g appium && \
    apt clean all && \
    # Install emulator EVN
    sdkmanager "emulator" && \
    sdkmanager "system-images;android-24;default;x86_64" && \
    echo no | avdmanager  create avd -n test24 -k "system-images;android-24;default;x86_64"
EXPOSE 4723  5554 5555
COPY src /root/src
COPY supervisord.conf /root/
RUN chmod -R +x /root/src && chmod +x /root/supervisord.conf

HEALTHCHECK --interval=2s --timeout=100s --retries=1 \
    CMD timeout 100 adb wait-for-device shell 'while [[ -z $(getprop sys.boot_completed) ]]; do sleep 1; done'

CMD /usr/bin/supervisord --configuration /root/supervisord.conf
