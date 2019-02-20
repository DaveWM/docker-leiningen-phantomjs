FROM circleci/clojure:lein-2.7.1

RUN export PHANTOM_JS="phantomjs-2.1.1-linux-x86_64" && \
    wget https://bitbucket.org/ariya/phantomjs/downloads/$PHANTOM_JS.tar.bz2 && \
    sudo tar xvjf $PHANTOM_JS.tar.bz2 && \
    sudo mv $PHANTOM_JS /usr/local/share && \
    sudo ln -sf /usr/local/share/$PHANTOM_JS/bin/phantomjs /usr/local/bin