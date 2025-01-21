FROM python:3.9-alpine
WORKDIR /app
COPY . /app
RUN pip install flask googlesearch-python
EXPOSE 5000
ENV NAME World
CMD ["python", "search.py"]
