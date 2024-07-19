FROM public.ecr.aws/lambda/python:3.12

# Copy requirements.txt
COPY ./src/requirements.txt ${LAMBDA_TASK_ROOT}/requirements.txt

# Install the specified packages
RUN pip install -r requirements.txt

# Copy function code
COPY ./src/lambda_function.py ${LAMBDA_TASK_ROOT}/lambda_function.py

# Set the CMD to your handler (could also be done as a parameter override outside of the Dockerfile)
CMD [ "lambda_function.handler" ]
