FROM odoo:18.0
COPY . /app
COPY ./odoo.conf /etc/odoo/odoo.conf
