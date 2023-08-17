# This image is based on python 3.9.17
FROM python:3.9.17

# Install poetry for package dependencies
RUN pip install poetry

# Install packages
WORKDIR workspace/MLFS
COPY poetry.lock pyproject.toml /
RUN poetry config virtualenvs.create false
RUN poetry config installer.max-workers 9
RUN poetry install