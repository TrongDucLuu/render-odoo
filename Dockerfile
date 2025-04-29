FROM odoo:18.0

USER root

# Cài requirements.txt
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r /app/requirements.txt

# Sao chép odoo.conf
COPY ./odoo.conf /etc/odoo/odoo.conf
RUN chown odoo:odoo /etc/odoo/odoo.conf

USER odoo
