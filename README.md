# Apache2 reverse proxy for pre-live testing

Reverse proxy setup with Apache2 that allows testing of a website (pre-DNS switch) without having to change your hostfile.
The script will launch a docker image with apache and load httpd.conf as config. That file contains a vhost with reverse proxy that will connect on the given IP using the specified hostname.

```./run.sh tom.be 1.2.3.4``

Browsing to localhost:8080 will result in connecting to http://tom.be at server 1.2.3.4.
Browsing to localhost:8443 will result in connecting to https://tom.be at server 1.2.3.4. (using a self-signed cert, so you will get a cert error)
