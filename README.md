# Web Frames

## Work of matter LP3 - frame virtual store

### Development
***
The application was developed in lenguage Java with the Eclipse IDE, using an [architecture MVC](README.md#the-structure-of-the-project-is-thus) with Spring MVC, persistence JDBC and in css e JavaScript, the Bootstrap. 

MySQL as [database](README.md#the-database).

Tomcat as web server.

### Importing the project
***
To import the application to eclipse follow the steps below:

1° - Download the file, 

![](img/download-zip.png)

2° unpack and move to the workspace folder of Eclipse. 

3° How the application has developed in Maven let's import existing Maven Projects, in the Eclipse IDE, click the menu file -> import, in the window that open choose the git option -> ![](img/existing-maven-project.png) -> next

![](img/finish-import.png)

4° Click finish.

### The structure of the project is thus:
***
Click on the links to be redirected to the respective layers.

Package | Description
------------|------------
[br.com.quadros.interceptor](src/br/com/quadros/interceptor)| Filter
[br.com.quadros.jdbc](src/br/com/quadros/jdbc)| Data persistence(DAO and Model)
[br.com.quadros.tarefas](src/br/com/quadros/tarefas)| Controller
[/WebContent/WEB-INF/views](WebContent/WEB-INF/views)| View
[/WebContent/resources](WebContent/resources)| CSS and JavaScript(Bootstrap)

![](img/wq-structure.png)

### Initial project setup with Spring MVC
***
First we need to add all the necessary dependencies, for this we will use the [pom.xml](pom.xml) file:

```xml
	<dependency>
		<groupId>org.springframework</groupId>
		<artifactId>spring-webmvc</artifactId>
		<version>4.1.6.RELEASE</version>
	</dependency>
	
	<dependency>
		<groupId>jstl</groupId>
		<artifactId>jstl</artifactId>
		<version>1.2</version>
	</dependency>
	
	<dependency>
		<groupId>mysql</groupId>
		<artifactId>mysql-connector-java</artifactId>
		<version>5.1.35</version>
	</dependency>
```

To be able to respond to URLs in web projects, you need at least one filter or a configured servlet.
The servlet responsible for handling all incoming requests to the Spring MVC is the DispatcherServlet, we need it to get everything working. The traditional way is to do the configuration through the [web.xml](WebContent/WEB-INF/web.xml) file, The file looks like this:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<web-app xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://java.sun.com/xml/ns/javaee" xsi:schemaLocation="http://java.sun.com/xml/ns/javaee http://java.sun.com/xml/ns/javaee/web-app_3_0.xsd" id="WebApp_ID" version="3.0">
  <display-name>web-quadros</display-name>
  <servlet>
    <servlet-name>springmvc</servlet-name>
    <servlet-class>org.springframework.web.servlet.DispatcherServlet</servlet-class>
    <init-param>
  		<param-name>contextConfigLocation</param-name>
  		<param-value>/WEB-INF/springmvc-servlet.xml</param-value>
  	</init-param>
    <load-on-startup>1</load-on-startup>
  </servlet>
  <servlet-mapping>
    <servlet-name>springmvc</servlet-name>
    <url-pattern>/</url-pattern>
  </servlet-mapping>

  <session-config>
  	<session-timeout>15</session-timeout>
  </session-config>
</web-app>

```

### The database
***
The database, MySQL, that is in the file [database/Dump20172016.sql](database/Dump20170216.sql).
