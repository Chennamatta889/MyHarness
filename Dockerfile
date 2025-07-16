FROM us-docker.pkg.dev/gar-prod-setup/harness-public/harness/delegate:25.06.86202

USER root

# Install Python and pip
RUN yum -y update && \
    yum -y install python3 python3-pip && \
    yum clean all

USER harness
