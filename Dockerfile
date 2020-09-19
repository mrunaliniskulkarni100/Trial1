FROM continuumio/miniconda:latest

WORKDIR /Desktop/docker_conda_template

#COPY environment1.yml ./
#COPY api.py ./
#COPY boot.sh ./

ADD . ./ 

RUN chmod +x boot.sh

RUN conda env create -f environment1.yml

#RUN echo "source activate Mrunalini" &gt; ~/.bashrc

SHELL ["conda", "run", "-n", "myenv", "/bin/bash", "-c"]
RUN echo "hey"
ENV PATH /opt/conda/envs/Mrunalini/bin:$PATH

EXPOSE 5000

ENTRYPOINT ["./boot.sh"]