This is the Git Repository belonging to Melina Cirverius for the course 1DV031 System Administration at Linneaus University. 
The documentation for this course, including the report for the first assignment that can be found in the documentation folder.
<br><br>

For this project I have created two name servers which are configured in different ways.
The two name servers are set up as primary (master) and secondary (slave) servers to direct traffic to the correct http urls.
<br>

The first server: acmea.mc222ap.devopslab.xyz is a server with a LAMP–stack installed.

To do this I started by creating an instance of an Ubuntu server (Linux) and configured Apache on it.
Then I installed and set up a MySQL database on the server as well as installed PHP, and through that completed the LAMP installation.
On this I then downloaded and installed a Wordpress installation, so that when visiting the above website, a Wordpress site is shown.

<br>
The second server: acmeb.mc222ap.devopslab.xyz is a Nginx server that works as a load balancer balancing the traffic to the server between two different Node.js instances.
<br>
For this I first created an instance with was configured with Nginx that would act as the load balancer. Then I created the two instances with a Node.js application installed on each. 
<br><br>
Below is a picture of my network topology showing the complete network.

ns-1 is the primary name server

ns-2 is the secondary name server

node_js_web-1 is the first of the two Node.js instances

node_js_web-2 is the second one

apache is the server with the LAMP-stack installed as well as the Wordpress installation

nginx is the instance that serves as the load balancer for the two Node.js instances

![network topology](https://github.com/1dv031/mc222ap-examination/blob/master/documentation/Network%20Structure%20mc222ap.png)
