FROM python:3.6.5-alpine3.7

RUN pip install --upgrade pip pipenv

WORKDIR /opt/sumo

COPY . /opt/sumo/

WORKDIR /opt/sumo

RUN pipenv install --system
RUN apk update && apk add bash
USER root
CMD ["python", "./sleep.py"]

#CMD ["ping", "localhost"]

#CMD ["/bin/bash"]
#ENTRYPOINT ["/bin/sh"]
#CMD ["python", "./sumologic_prometheus_scraper.py"]