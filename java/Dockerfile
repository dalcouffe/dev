FROM daspoonman/spacemacs

USER root

RUN apt-get update \
  && apt-get install -y openjdk-8-jdk-headless libxext-dev libxrender-dev libxtst-dev zip \
  && curl -ko /tmp/intellij.tar.gz https://download-cf.jetbrains.com/idea/ideaIC-2016.3.tar.gz \
  && mkdir /opt/intellij \
  && tar -xzf /tmp/intellij.tar.gz -C /opt/intellij --strip-components=1 \
  && ln -s /opt/intellij/bin/idea.sh /bin/idea \
  && rm -rf /tmp/*

USER $USER

RUN curl -s https://get.sdkman.io | sh \
 && sed -i 's/\(sdkman_auto_answer=\)false/\1true/' ${HOME}/.sdkman/etc/config \
 && zsh -c "source ${HOME}/.sdkman/bin/sdkman-init.sh && sdk install groovy" \
 && zsh -c "git clone https://github.com/dougborg/gdub.git /tmp/gdub && sudo /tmp/gdub/install && rm -rf /tmp/gdub"
