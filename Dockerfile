# Use a imagem base do Python 3.11
FROM python:3.8

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copia o arquivo requirements.txt para o diretório de trabalho
COPY requirements.txt .

# Instala as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Copia todo o conteúdo do diretório atual para o diretório de trabalho
COPY . /app

# Expõe a porta 8000 para acesso externo
EXPOSE 8000

# Execute o comando para iniciar sua aplicação
CMD ["python","-m", "src.main"]
