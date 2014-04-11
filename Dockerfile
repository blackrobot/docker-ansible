# damon/ansible

FROM damon/base

# Install pip
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get install -qq python-pip python-dev

# Install the latest ansible package
RUN pip install -U ansible

# Default to ansible
CMD ["ansible-playbook"]
