FROM python:3.7

WORKDIR /opt/app

COPY . .

RUN python3 -m venv venv & \
    source venv/bin/activate & \
    pip3 install --no-cache-dir -r requirements-prod.txt
    
EXPOSE 5000

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
