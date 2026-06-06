FROM jupyter/scipy-notebook:python-3.11.6

# Pin the PostgreSQL adapter and ORM at exact versions — no drift possible
RUN pip install --no-cache-dir \
    psycopg2-binary==2.9.9 \
    sqlalchemy==2.0.28
