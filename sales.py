import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns

# Loading the dataset
df=pd.read_csv('sales_data_sample.csv',encoding='latin1')

# Basic structural info
print(df.head())
print(df.info())
print(df.describe())

# Checking for missing values
print(df.isnull().sum())

# Removing unnecessary columns 
df.drop(columns=['ADDRESSLINE2', 'PHONE'], inplace=True)

# Handle Missing Values

# Numerical Columns
num_cols = df.select_dtypes(include=['int64','float64']).columns
for col in num_cols:
    df[col] = df[col].fillna(df[col].median())

# Categorical Columns
cat_cols = df.select_dtypes(include='object').columns
for col in cat_cols:
    df[col] = df[col].fillna(df[col].mode()[0])

print(df.isnull().sum())

# Check Duplicates
print("Duplicates:", df.duplicated().sum())


# Converting column names to lower
df.columns = df.columns.str.lower()
print(df.columns)


# Converting date 
df['orderdate'] = pd.to_datetime(df['orderdate'])


# New column for full name
df['contactname'] = df['contactfirstname'] + ' ' + df['contactlastname']
df.drop(columns=['contactfirstname', 'contactlastname'], inplace=True)

print(df.head())
print(df.columns)

# Chnaging column name 
df.rename(columns={'dealsize': 'salescategory'}, inplace=True)
print(df.columns)


from sqlalchemy import create_engine

# MySQL connection
username = "root"
password = "jannat123"
host = "localhost"
port = "3306"
database = "sales_analysis"

engine = create_engine(f"mysql+pymysql://{username}:{password}@{host}:{port}/{database}")

print("Connection Successful!")


# Upload the dataframe
df.to_sql("sales_data",con=engine,if_exists="replace",index=False)

print("Data uploaded successfully!")


# Read back sample
sales = pd.read_sql("SELECT * FROM sales_data LIMIT 5;",con=engine)

print(sales)