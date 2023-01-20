FROM python:3-bullseye
COPY . /app
WORKDIR /app
RUN apt-get update && apt-get install gcc libldap2-dev libsasl2-dev libssl-dev -y
RUN pip3 install -r requirements.txt
ENTRYPOINT [ "python3", "mailcow_ldap_sync/main.py" ]
