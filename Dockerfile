FROM ubuntu:22.04
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y python3.10-venv python3-pip sudo

WORKDIR /app
COPY . /app
RUN python3 -m venv chatgeopt
RUN . chatgeopt/bin/activate
RUN pip install -r requirements.txt

CMD ["streamlit", "run", "app.py"]