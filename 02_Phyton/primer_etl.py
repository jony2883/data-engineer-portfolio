import pandas as pd
from datetime import datetime

# 1. EXTRACT - Extraemos datos de un CSV público
url = "https://raw.githubusercontent.com/datasciencedojo/datasets/master/titanic.csv"
df = pd.read_csv(url)

print(f"Filas extraídas: {len(df)}")
print(df.head())

# 2. TRANSFORM - Limpiamos y enriquecemos
# Rellenamos edades faltantes con la mediana
df['Age'] = df['Age'].fillna(df['Age'].median())

# Creamos columna "EsAdulto"
df['EsAdulto'] = df['Age'] >= 18

# Creamos columna de fecha de procesamiento
df['fecha_procesado'] = datetime.now().strftime("%Y-%m-%d")

# 3. LOAD - Guardamos el resultado limpio
df.to_csv("../02_Python/titanic_procesado.csv", index=False)

print("ETL COMPLETADO - Archivo guardado como titanic_procesado.csv")