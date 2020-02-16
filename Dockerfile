FROM python:3.7.3

WORKDIR /

COPY snapshotter.py .

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

RUN rm requirements.txt

ENTRYPOINT ["python", "-u", "snapshotter.py"]
