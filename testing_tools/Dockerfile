ARG tag
FROM python:$tag
RUN apk --no-cache add bash
RUN pip install pytest pyfakefs
CMD rm -rf __pycache__; py.test