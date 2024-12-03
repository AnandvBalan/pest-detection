from flask import Flask
from public import public
from farmer import farmer
from admin import admin
from customer import customer


import smtplib
from email.mime.text import MIMEText
from flask_mail import Mail, Message


app=Flask(__name__)
app.secret_key="pest"
app.register_blueprint(admin,url_prefix="/admin")
app.register_blueprint(farmer,url_prefix="/farmer")
app.register_blueprint(customer,url_prefix="/customer")
app.register_blueprint(public)

app.config.from_object('config') 

mail = Mail(app)  



app.run(debug=True,port=5086,host="0.0.0.0")