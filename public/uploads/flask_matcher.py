import os
from match import find_match
from textreading import read_file

from flask import Flask,render_template, request
from flask_mysqldb import MySQL

 
app = Flask(__name__)
 
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'nfsulara'
 
mysql = MySQL(app)


@app.route('/match-file', methods = ['POST', 'GET'])
def process_match():
    if request.method == 'GET':
        return "Login via the login Form"
     
    if request.method == 'POST':
        image_url = request.form['image_url']
        read_file(image_url)
       
        #os.system("tesseract "+image_url+" out_text")

        mycursor = mysql.connection.cursor()
        mycursor.execute("SELECT AOS_ID,AOStudy,AOSDetails  FROM areaofstudy")
        myresult = mycursor.fetchall()
        response={}
        for record in myresult:
          response[record[1]]=str(find_match("result.txt",record[2]))+"%"
          
        return(response)
 
app.run(host='localhost', port=8000)
