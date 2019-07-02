ARG RUNDECK_IMAGE

FROM ${RUNDECK_IMAGE:-jordan/rundeck:3.0.23}
RUN apt-get update -y
RUN curl -s https://bootstrap.pypa.io/get-pip.py -o /opt/get-pip.py
RUN python /opt/get-pip.py
RUN pip install pywinrm boto3 ansible
