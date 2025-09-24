# 1. Start from Python
FROM python:3.11-slim

# 2. Set working directory inside container
WORKDIR /app

# 3. Copy dependency list & install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy app code
COPY . .

# 5. Expose port
EXPOSE 5000

# 6. Run the app
CMD ["python", "app.py"]
