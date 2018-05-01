# Pull da imagem
FROM dockerfile/ubuntu

# Instalando Java.
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer


# Define o diretorio de trabalho.
WORKDIR /data

# Define a variacel JAVA_HOME.
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Define o comando default.
CMD ["bash"]
