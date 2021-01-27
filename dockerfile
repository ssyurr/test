FROM python:3.6-slim
MAINTAINER ssyurr@gmail.com
COPY . /test
WORKDIR /test
RUN python venv venv
RUN source venv/bin/activate
RUN pip install --no-cache-dir -r requirements.txt
RUN ["pytest", "-v", "--html=report.html --self-contained-html"]
CMD tail -f /dev/null
