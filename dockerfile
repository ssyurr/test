FROM python:3.6-slim
MAINTAINER ssyurr@gmail.com
COPY . /test
WORKDIR /test
ENV PYTHONPATH /test
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--reports/html=report.html --self-contained-html"]
CMD tail -f /dev/null
