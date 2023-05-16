# build stage

FROM python:3.8.11-slim as builder
WORKDIR /usr/src/app
COPY requirements.txt .
COPY Data/test_input.csv .
COPY Data/data_slicing.py .
COPY visualize.py .
ENV START_ROW=1
RUN pip3 install -r requirements.txt
CMD [ "python3", "./visualize.py" ]
# RUN python3 ./visualize.py

# production stage
FROM nginx:1.21.3-alpine
COPY --from=builder /usr/src/app /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]