FROM odoo:18.0

USER root

# Sao chép mã nguồn
COPY . /odoo

# Cài requirements.txt
RUN pip install -r /odoo/requirements.txt

# Sao chép và cấu hình odoo.conf
COPY ./odoo.conf /etc/odoo/odoo.conf
RUN chown odoo:odoo /etc/odoo/odoo.conf

USER odoo
