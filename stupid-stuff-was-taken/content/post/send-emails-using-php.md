---
title: 'Send emails using PHP'
date: 2021-08-04T08:16:00.005-07:00
draft: false
url: /2021/08/send-emails-using-php.html
tags: 
- email
- mail
- sendmail
- server
- php
---

This is how to send an email using PHP. For this to work, PHP needs access to the `sendmail` binary (and permission to use it). You have to set the path to this binary in `php.ini` (check where it is located using the `phpinfo()` function). Place it under the line `[mail function]`. Here's an example:

```
[mail function]  
sendmail_path = /usr/sbin/sendmail  

```

On Windows you also have to set your SMTP server. Here's another example:

```
[mail function]  
SMTP = localhost  
smtp_port = 25  
  
sendmail_from = robin@geheimesite.nl  

```

This is a simple script to send emails using PHP:

```
<?php   
$msg = " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam et fermentum lorem. Proin tristique tortor in metus mattis euismod. Donec ligula erat, ultrices at dapibus ornare, convallis ut ligula. Nullam aliquet nec enim eget consectetur. Quisque hendrerit, purus quis luctus vestibulum, massa dui commodo lectus, luctus iaculis nisl arcu eu odio. Integer porta ultrices libero, et vestibulum metus lacinia vitae. Etiam ipsum arcu, pharetra ut maximus nec, imperdiet vel ex. Donec ut ligula vel risus pellentesque porttitor. Nam lectus leo, tincidunt et justo pellentesque, dictum hendrerit neque. Pellentesque consectetur, mauris id lobortis sagittis, nisl tortor lacinia est, vel rhoncus lorem libero ut erat. Nam maximus iaculis mollis. Nunc rhoncus sagittis nulla. Nulla porta dolor sit amet ultricies ultrices. ";  
  
$email = "robin@geheimesite.nl";  
$subject = "Example email";  
  
$msg = wordwrap($msg,70);  
  
mail($email,$subject,$msg);  
?> 
```

On the PHP documentation there also was a [usefull comment](https://www.php.net/manual/en/book.mail.php#92738) (credits to pouletfou at gmail dot com) describing how to use a fakemail binary to check the logs for testing purposes:

```
#!/usr/bin/php  
<?php  
    //====================================================  
    // Program : Fake send mail  
    // Author : pouletfou at gmail  
    // Description : save this file as /usr/sbin/sendmail  
    //  and you can test your PHP applications using mail  
    //  by looking at the /tmp/fakesendmail.log files.  
    //====================================================  
  
    define('LOGFILE','/tmp/fakesendmail.log');  
  
    $log = fopen (LOGFILE,'a+');  
  
    fwrite($log,"\n".implode(' ',$argv).  
     " called on : ".date('Y-m-d H:i:s')."\n");  
  
    fwrite($log,file_get_contents("php://stdin"));  
    fwrite($log,  
"\n===========================================================\n");  
    fclose($log);  
  
?>  

```

Sources:

*   [https://www.php.net/manual/en/book.mail.php](https://www.php.net/manual/en/book.mail.php)
*   [https://www.quackit.com/php/tutorial/php\_mail\_configuration.cfm](https://www.quackit.com/php/tutorial/php_mail_configuration.cfm)