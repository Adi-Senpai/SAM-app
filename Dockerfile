FROM public.ecr.aws/lambda/python:3.14

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY api.py .

# Lambda handler
CMD ["api.handler"]
