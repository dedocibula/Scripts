@ECHO OFF
doskey cd=cd $*$Tdir
doskey ..=cd..
doskey ip=ipconfig -all
doskey ls=dir /a /b
doskey server=php -S localhost:8000
doskey jetty=mvn jetty:run
doskey tomcat=mvn tomcat7:run
doskey exec=mvn exec:java
