simple-behat-demo
=================

This is a simple demo of Behat and Mink.  The application to be tested lives in the "site" folder and the "tests" folder contains composer files for installing Behat, Mink and Associated Drivers.

To install, first install composer (http://getcomposer.org), then run
```
php composer.phar install
```

Now configure the base_url parameter in behat.yml to point to the web address where you have installed the application in the "site" folder.

To run the tests using selenium, you will need to uncomment the appropriate lines in behat.yml and download and run the Selenium Server (http://docs.seleniumhq.org/download/).  You can then run Selenium with this command:

```
java -jar selenium-server-standalone-2.41.0.jar
```