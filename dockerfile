# Etapa 1: imagem base leve com Python 3.11
FROM python:3.11-slim

# Etapa 2: define o diretório de trabalho dentro do container
WORKDIR /app

# Etapa 3: copia os arquivos do projeto para dentro do container
COPY . .

# Etapa 4: instala as dependências do projeto (usando requirements.txt)
RUN pip install --no-cache-dir -r requirements.txt

# Etapa 5: expõe a porta 10000 (a usada no backend.py com uvicorn)
EXPOSE 10000

# Etapa 6: comando padrão que o container executa ao subir
CMD ["uvicorn", "backend:app", "--host", "0.0.0.0", "--port", "10000"]
