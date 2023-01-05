FROM python:3.8-slim

ARG HOME

RUN pip install numpy
RUN pip install panda

RUN mkdir -p /root/git/awesome-bash-cli

COPY $HOME/git/awesome-bash-cli/ /root/git/awesome-bash-cli/

CMD ["/bin/bash"]