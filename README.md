### Spring 3 secure web application with Hibernate and DBCP

##### Using Spring Security standard database authentication methods

- Create the mysql database **sphidb** in the port **3306**

##### Using Eclipse Maven Plugin to run the project for the first time

1. Select the project
2. Go at menu *Run > Run Configurations*
3. Select *Maven Build* 
4. Right click on *New* 
5. Specify the *Goal* as **clean tomcat:run**
6. Click in *Browse Workspace* and select the your project
7. In Name specify **<Project-Name> - Run Tomcat Without Downloads** 
7. Click *Run*
8. After the Maven processing, access the web application in **http://localhost:8080/sphidb**
9. Afterwards the run configuration option will be available in the **Run** icon on **Eclipse IDE**

Next time you run the application you may use for step 5: 
* **-o tomcat:run**

Other options for step 5:
* **-o clean package tomcat:run-war**
* **Dmaven.tomcat.port=8086 tomcat:run**
