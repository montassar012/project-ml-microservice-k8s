FROM python:3.7.3-stretch
LABEL MAINTAINER="mkallali"

## Step 1:
# Create a working directory
WORKDIR /app
## Step 2:
# Copy source code to working directory
COPY   $PWD/requirements.txt  requirements.txt 
COPY   $PWD/app.py        app.py
COPY   $PWD/model_data     model_data
## Step 3:
# Install packages from requirements.txt
RUN  pip install --upgrade pip && pip install -r /app/requirements.txt
# hadolint ignore=DL3013
## Step 4:
# Expose port 80
EXPOSE 80
## Step 5:
# Run app.py at container launch
ENTRYPOINT [ "python3","app.py" ]