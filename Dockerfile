FROM python:3.9

# Jupyter Notebook aur required libraries install karna
RUN pip install notebook pandas numpy matplotlib

# Working directory set karna
WORKDIR /app

# Jupyter Notebook file copy karna (aapke notebook ka naam jo ho)
COPY code1.ipynb .

# Notebook run karne ka command
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"]