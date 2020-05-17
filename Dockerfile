FROM theypsilon/quartus-lite-c5:17.0.2.dockerheavy0
LABEL maintainer="theypsilon@gmail.com"
WORKDIR /project
ADD . /project
RUN /opt/intelFPGA_lite/quartus/bin/quartus_sh --flow compile AY-3-8500.qpf
CMD cat /project/output_files/AY-3-8500.rbf
