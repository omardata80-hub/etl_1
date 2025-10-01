
##  Project Goal
The goal of this project is to demonstrate an **ETL pipeline** using **Python, Pandas, and PostgreSQL**.  

Steps:
1. **Extract** → Load data from CSV into a Pandas DataFrame  
2. **Transform** → Clean the data (remove duplicates, handle missing values, compute new features)  
3. **Load** → Insert the transformed data into a PostgreSQL database  

---

## 🛠️ Tools & Libraries
- **Python**: pandas, sqlalchemy, psycopg2  
- **PostgreSQL**: Database  
- **Jupyter Notebook**: For running the ETL steps  
- **Git & GitHub**: Version control  

---

## 📂 Project Structure
```

etl_1/
│── etl.ipynb         # Jupyter Notebook with ETL steps
│── data.csv          # Input dataset (CSV file)
│── requirements.txt  # Python dependencies
│── README.md         # Documentation

````

---

## ▶️ How to Run
1. Clone the repo:
   ```bash
   git clone https://github.com/omardata80-hub/etl_1.git
   cd etl_1
````

2. Install dependencies:

   ```bash
   pip install -r requirements.txt
   ```

3. Run the ETL notebook:

   ```bash
   jupyter notebook etl.ipynb
   ```

4. Verify the data in PostgreSQL:

   ```sql
   SELECT * FROM customers LIMIT 10;
   ```

---

## ✅ Deliverables

* Working ETL pipeline (`etl.ipynb`)
* PostgreSQL database with loaded data
* Documentation (`README.md`)

`
