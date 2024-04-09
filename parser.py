import sys
import xml.dom.minidom
import mysql.connector

dom = xml.dom.minidom.parse(sys.argv[1])
date = sys.argv[2][:10]

flag = 0;

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="password",
    database="weather"
)

mycursor = mydb.cursor()

infos = dom.getElementsByTagName("a")
for info in infos:
    if info.hasAttribute("id") and info.getAttribute("id") == "localWFO":
        information = info.getAttribute("title")
city, state = information.split(", ")

forecasts = dom.getElementsByTagName("div")
for forecast in forecasts:
    if forecast.hasAttribute("class") and forecast.getAttribute("class") == "tombstone-container":
        longDesc = forecast.getElementsByTagName("img")[0].getAttribute("title")
        if forecast.getElementsByTagName("p")[2].hasAttribute("class") and forecast.getElementsByTagName("p")[2].getAttribute("class") == "short-desc":
            shortDesc = forecast.getElementsByTagName("p")[2].firstChild.nodeValue.strip()
        temp = forecast.getElementsByTagName("p")[3].childNodes[0].nodeValue.strip()
        period, longDesc = longDesc.split(":")

        sql = "INSERT INTO weatherInfo (city, period, longDesc, shortDesc, temp, state, date) VALUES (%s, %s, %s, %s, %s, %s, %s)"
        val = (city, period, longDesc, shortDesc, temp, state, date)
        mycursor.execute(sql, val)
        mydb.commit()

mydb.close()

