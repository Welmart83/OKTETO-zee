FROM sandy1709/catuserbot:slim-buster

# Cloning repo
RUN git clone https://github.com/LEGEND-AI/OKTETO.git -b okteto /root/Legendbot

# Setting up Working Directory
WORKDIR /root/Legendbot

# Installing requirements
RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install -r requirements.txt

# Configuring Environment
ENV PATH="/home/Legendbot/bin:$PATH"

# Copying Directory to image
COPY . .

# Catuserbot!
CMD ["sh","Legend"]
